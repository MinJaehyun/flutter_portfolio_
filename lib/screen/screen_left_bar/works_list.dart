import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screen/works_about/chatting_app_about.dart';
// import 'package:flutter_portfolio/screen/works_about/works_about.dart'; // testing...
import 'package:flutter_portfolio/screen/works_skill/chatting_app_skill.dart';
import 'package:flutter_portfolio/screen/works_about/mongodb_about.dart';
import 'package:flutter_portfolio/screen/works_skill/mongodb_skill.dart';
import 'package:flutter_portfolio/screen/works_about/vuestagram.dart';
import 'package:flutter_portfolio/screen/works_skill/vuestagram.dart';
import 'package:flutter_portfolio/screen/works_about/pinterest.dart';
import 'package:flutter_portfolio/screen/works_skill/pinterest.dart';
import 'package:flutter_portfolio/screen/works_about/biba_about.dart';
import 'package:flutter_portfolio/screen/works_skill/biba_skill.dart';

class WorksList extends StatefulWidget {
  WorksList(this._selectedWork, {Key? key}) : super(key: key);
  final String _selectedWork;

  @override
  State<WorksList> createState() => _WorksListState();
}

class _WorksListState extends State<WorksList> {
  // note: selectedWork 빈문자로 처리하면 모든 프로젝트 선택하는 화면 나타낼 수 있다
  String selectedWork = 'chatting app';

  @override
  void initState() {
    super.initState();
    setState(() => selectedWork = widget._selectedWork);
  }

  @override
  Widget build(BuildContext context) {
    // testing...
    // WorksAbout worksAbout = WorksAbout();
    ChattingAppAbout chattingAppAbout = ChattingAppAbout();
    ChattingAppSkill chattingAppSkill = ChattingAppSkill();
    MongoDBAbout mongoDBAbout = MongoDBAbout();
    MongoDBSkill mongoDBSkill = MongoDBSkill();
    VuestagramAbout vuestagramAbout = VuestagramAbout();
    VuestagramSkill vuestagramSkill = VuestagramSkill();
    PinterestAbout pinterestAbout = PinterestAbout();
    PinterestSkill pinterestSkill = PinterestSkill();
    BibaAbout bibaAbout = BibaAbout();
    BibaSkill bibaSkill = BibaSkill();

    return DefaultTabController(
      length: 5,
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
                        Tab(text: 'chatting app', icon: Icon(Icons.chat_bubble)),
                        Tab(text: 'mongoDB', icon: Icon(Icons.dataset)),
                        Tab(text: 'vuestagram', icon: Icon(Icons.person)),
                        Tab(text: 'pinterest', icon: Icon(Icons.account_box)),
                        Tab(text: 'biba', icon: Icon(Icons.beach_access_rounded)),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          // testing...
                          // NestedTabBar(worksAbout.setPdfAssetPath('chatting_app'), chattingAppSkill),
                          // note: 인자는 함수를 넣겨 줘서, 하위에서 동적 실행하게 한다
                          NestedTabBar(chattingAppAbout, chattingAppSkill),
                          NestedTabBar(mongoDBAbout, mongoDBSkill),
                          NestedTabBar(vuestagramAbout, vuestagramSkill),
                          NestedTabBar(pinterestAbout, pinterestSkill),
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
    _tabController = TabController(length: 2, vsync: this);
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
            // todo: 추 후
            // Tab(text: 'Review'),
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
              // todo: 추 후
              // Card(margin: EdgeInsets.all(12), child: Center(child: Text('Test 중 입니다...'))),
            ],
          ),
        ),
      ],
    );
  }
}
