import 'package:flutter/material.dart';
// import 'package:flutter_portfolio/screen/initial_scaffold/appbar/init_appbar_widget.dart';
import 'package:flutter_portfolio/screen/initial_scaffold/drawer/drawer_widget.dart';
import 'package:flutter_portfolio/screen/screen_left_bar/about_my_info.dart';
import 'package:flutter_portfolio/screen/screen_left_bar/contact_page.dart';
import 'package:flutter_portfolio/screen/screen_left_bar/resume_page.dart';
import 'package:flutter_portfolio/screen/screen_left_bar/works_list.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  String mainPage = 'about';
  String selectedWork = 'mongoDB';

  // note: Drawer 내 setState 설정 사용 안 되므로 함수 처리하여 해결
  void changeMainPage(String pageName) {
    setState(() => mainPage = pageName);
  }

  void changeSelectedWork(String work) {
    setState(() => selectedWork = work);
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: DrawerWidget(changeMainPage),
      // note: appBar 는 PreferredSizeWidget 타입이며 PreferredSizeWidget 는 abstract class 이며, preferredSize 와 child 프로퍼티를 요구하여 설정함
      appBar: currentWidth < 960 ? _buildAppBar(color: Colors.lightGreen, isBool: true) : _buildAppBar(color: Colors.lightBlueAccent, isBool: false),
      // PreferredSize(preferredSize: const Size.fromHeight(55), child: InitAppBarWidget()),
      body: Container(child: LayoutBuilder(builder: (_, constraints) => _buildRow(constraints))),
    );
  }

  // note: AppBar 내 중복 코드
  AppBar _buildAppBar({required color, required bool isBool}) {
    return AppBar(
      title: Text('Portfolio', style: TextStyle(color: Colors.blueAccent)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color, Colors.white70],
          ),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      // 메뉴바 icon 색상 지정
      iconTheme: IconThemeData(color: Colors.blueAccent),
      // note: appbar 내 icon btn 제거 방법
      automaticallyImplyLeading: isBool,
    );
  }

  // note:
  Row _buildRow(BoxConstraints constraints) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // note: about
              column(constraints, mainPage: 'about', icon: Icon(Icons.perm_identity_outlined)),
              // note: resume
              column(constraints, mainPage: 'resume', icon: Icon(Icons.note_outlined)),
              // note: works
              column(constraints, mainPage: 'works', icon: Icon(Icons.build_outlined)),
              // note: contact
              column(constraints, mainPage: 'contact', icon: Icon(Icons.contact_mail_outlined)),
              // todo: theme
              Column(
                children: [
                  Container(
                    height: 55,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white12,
                    ),
                    child: IconButton(
                      // todo: 클릭 시, isMoon = true 를 false 로 변경한다. 아이콘도 변경한다.
                      onPressed: null,
                      icon: (constraints.maxWidth > 960) ? Icon(Icons.sunny, color: Colors.white) : Opacity(opacity: 0),
                      tooltip: 'testing... brightness darkness or light mode',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // note: 클릭한 대상을 넘겨받고, 이를 변수에 담아 아래 컨테이너에 담고 처리한다
        // note: if(mainPage == 'about') 이면 about_list.dart 가져오기
        if (mainPage == 'about') AboutMyInfo(),
        if (mainPage == 'resume') ResumePage(),
        if (mainPage == 'works') WorksList(selectedWork),
        if (mainPage == 'contact') ContactPage(),
      ],
    );
  }

  // note: _buildRow 내에 중복 Column 을 개선
  Column column(BoxConstraints constraints, {required String mainPage, required Icon icon}) {
    return Column(
      children: [
        IconButton(
          onPressed: () => setState(() => this.mainPage = mainPage),
          icon: (constraints.maxWidth > 960) ? icon : Opacity(opacity: 0),
        ),
        // note: 1400 이상이면서(&&), 클릭한 대상이면 애니메이션 적용한 text 나타내기
        if ((constraints.maxWidth > 960) && (this.mainPage == mainPage))
          AnimatedTextKit(
            animatedTexts: [WavyAnimatedText(mainPage)],
            repeatForever: true,
          )
        // note: 크기가 1400 이상이고, 클릭한 대상이 아니면 text 만 나타내기
        else if (constraints.maxWidth > 960)
          Text(mainPage)
      ],
    );
  }
}
