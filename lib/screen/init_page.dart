import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screen/about_list.dart';
import 'package:flutter_portfolio/screen/contact_page.dart';
import 'package:flutter_portfolio/screen/resume_page.dart';
import 'package:flutter_portfolio/screen/works_list.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  String mainPage = 'contact';

  // note: Drawer 내 setState 설정 사용 안 되므로, 함수로 처리하는 방법으로 해결
  void changeMainPage(String pageName) {
    setState(() {
      mainPage = pageName;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: currentWidth < 960
          ? AppBar(
              title: Text('Portfolio', style: TextStyle(color: Colors.blueAccent)),
              // note: Change drawer icon color
              iconTheme: IconThemeData(color: Colors.blueAccent),
              centerTitle: true,
              elevation: 0.0,
              backgroundColor: Colors.white,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.lightGreen, Colors.white70],
                  ),
                ),
              ),
            )
          // note: 사이즈가 960 이상이면 AppBar 숨기기
          : AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.lightBlueAccent, Colors.white70],
                  ),
                ),
              ),
              elevation: 0,
              title: Text(
                'Portfolio',
                style: TextStyle(color: Colors.blueAccent),
              ),
              centerTitle: true),
      body: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return buildRow(constraints);
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            DrawerHeader(
              // note: DrawerHeader 내에 Divider 제거
              decoration: BoxDecoration(
                  border: Border(
                bottom: Divider.createBorderSide(
                  context,
                  color: Colors.white70,
                ),
              )),
              child: TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('Close', style: TextStyle(color: Colors.redAccent))),
            ),
            // note: 클릭하면 해당 페이지 보여주도록 설정함
            ListTile(
              onTap: () {
                changeMainPage('about');
              },
              leading: Icon(Icons.perm_identity_outlined),
              title: Text('ABOUT'),
              trailing: Icon(Icons.arrow_forward),
            ),
            SizedBox(height: 120),
            ListTile(
              onTap: () {
                changeMainPage('resume');
              },
              leading: Icon(Icons.note_outlined),
              title: Text('resume'),
              trailing: Icon(Icons.arrow_forward),
            ),
            SizedBox(height: 120),
            ListTile(
              onTap: () {
                changeMainPage('works');
              },
              leading: Icon(Icons.build_outlined),
              title: Text('WORKS'),
              trailing: Icon(Icons.arrow_forward),
            ),
            SizedBox(height: 120),
            ListTile(
              onTap: () {
                changeMainPage('contact');
              },
              leading: Icon(Icons.contact_mail_outlined),
              title: Text('CONTACT'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRow(BoxConstraints constraints) {
    print(mainPage);
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // note: 길이 확인: Text(constraints.maxWidth.toString()),
                // note: about: 내 소개
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'about'),
                      icon: (constraints.maxWidth > 960) ? Icon(Icons.perm_identity_outlined) : Opacity(opacity: 0),
                    ),
                    // note: 1400 이상이면서(&&), 클릭한 대상이면 애니메이션 적용하여 text 나타내기
                    if ((constraints.maxWidth > 960) && (mainPage == 'about'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('ABOUT'),
                        ],
                        repeatForever: true,
                      )
                    // note: 크기가 1400 이상이고, 클릭한 대상이 아니면 text 만 나타내기
                    else if (constraints.maxWidth > 960)
                      Text('ABOUT')
                  ],
                ),
                // note: 이력서
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'resume'),
                      icon: (constraints.maxWidth > 960) ? Icon(Icons.note_outlined) : Opacity(opacity: 0),
                    ),
                    if ((constraints.maxWidth > 960) && (mainPage == 'resume'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('RESUME'),
                        ],
                        repeatForever: true,
                      )
                    else if (constraints.maxWidth > 960)
                      Text('RESUME')
                  ],
                ),
                // note: works
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'works'),
                      icon: (constraints.maxWidth > 960) ? Icon(Icons.build_outlined) : Opacity(opacity: 0),
                    ),
                    if ((constraints.maxWidth > 960) && (mainPage == 'works'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('WORKS'),
                        ],
                        repeatForever: true,
                      )
                    else if (constraints.maxWidth > 960)
                      Text('WORKS')
                  ],
                ),
                // note: contact
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'contact'),
                      icon: (constraints.maxWidth > 960) ? Icon(Icons.contact_mail_outlined) : Opacity(opacity: 0),
                    ),
                    if ((constraints.maxWidth > 960) && (mainPage == 'contact'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('CONTACT'),
                        ],
                        repeatForever: true,
                      )
                    else if (constraints.maxWidth > 960)
                      Text('CONTACT')
                  ],
                ),
              ],
            ),
          ),
        ),
        // note: 클릭한 대상을 넘겨받고, 이를 변수에 담아 아래 컨테이너에 담고 처리한다
        // note: if(mainPage == 'about') 이면 about_list.dart 가져오기
        if (mainPage == 'about') AboutList(),
        if (mainPage == 'resume') ResumePage(),
        if (mainPage == 'works') WorksList(),
        if (mainPage == 'contact') ContactPage(),
      ],
    );
  }
}
