import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screen/works_about/biba_about.dart';
import 'package:flutter_portfolio/screen/works_skill/biba_skill.dart';
import 'package:flutter_portfolio/screen/works_about/mongodb_about.dart';
import 'package:flutter_portfolio/screen/works_skill/mongodb_skill.dart';

class WorksList extends StatefulWidget {
  WorksList(this._selectedWork, {Key? key}) : super(key: key);
  String _selectedWork;

  @override
  State<WorksList> createState() => _WorksListState();
}

class _WorksListState extends State<WorksList> {
  // note: selectedWork 빈문자로 처리하면 모든 프로젝트 선택하는 화면 나타낼 수 있다
  String selectedWork = 'mongoDB';

  @override
  void initState() {
    super.initState();
    setState(() => selectedWork = widget._selectedWork);
  }

  @override
  Widget build(BuildContext context) {
    MongoDBAbout mongoDBAbout = MongoDBAbout();
    MongoDBSkill mongoDBSkill = MongoDBSkill();
    BibaAbout bibaAbout = BibaAbout();
    BibaSkill bibaSkill = BibaSkill();

    // List<String> works_image_left = [
    //   'assets/works_image_left/mongoDB.png',
    //   'assets/works_image_left/biba.png',
    // ];

    return DefaultTabController(
      // initialIndex: 2,
      length: 2,
      child: Expanded(
        child: Container(
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.all(12.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Column(
                  children: [
                    TabBar(
                      tabs: <Widget>[
                        Tab(text: 'mongoDB', icon: Icon(Icons.flight)),
                        Tab(text: 'biba', icon: Icon(Icons.luggage)),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          // note: 인자는 하위에서 받음
                          // todo: 인자는 함수를 넣겨 줘서, 하위에서 동적 실행하게 한다
                          // 인자에서 함수 2개 실행해서 결과값 가져오기 - mongoDB
                          NestedTabBar(mongoDBAbout, mongoDBSkill),
                          NestedTabBar(bibaAbout, bibaSkill),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  NestedTabBar(this.about, this.skill, {super.key});

  final Widget about;
  final Widget skill;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar.secondary(
          controller: _tabController,
          tabs: [
            Tab(text: 'About'),
            Tab(text: 'Skill'),
            Tab(text: 'Review'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Card(
                margin: EdgeInsets.all(12),
                child: Column(children: [Expanded(child: widget.about)]),
              ),
              Card(
                margin: EdgeInsets.all(12),
                child: Column(children: [Expanded(child: widget.skill)]),
              ),
              Card(margin: EdgeInsets.all(12), child: Center(child: Text('Test 중 입니다...'))),
            ],
          ),
        ),
      ],
    );
  }
}
