import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screen/about_list.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  String mainPage = 'about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio', style: TextStyle(color: Colors.blueAccent)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return buildRow(constraints);
          },
        ),
      ),
    );
  }

  Row buildRow(BoxConstraints constraints) {
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
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'about'),
                      icon: Icon(Icons.perm_identity_outlined),
                    ),
                    if (constraints.maxWidth > 1400) Text('ABOUT'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'works'),
                      icon: Icon(Icons.build_outlined),
                    ),
                    if (constraints.maxWidth > 1400) Text('WORKS'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'github'),
                      icon: Icon(Icons.account_circle_outlined),
                    ),
                    if (constraints.maxWidth > 1400) Text('GITHUB'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'resume'),
                      icon: Icon(
                        Icons.note_outlined,
                      ),
                    ),
                    if (constraints.maxWidth > 1400) Text('RESUME'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'about'),
                      icon: Icon(Icons.contact_mail_outlined),
                    ),
                    if (constraints.maxWidth > 1400) Text('CONTACT'),
                  ],
                ),
              ],
            ),
          ),
        ),
        // note: 클릭한 대상을 넘겨받고, 이를 변수에 담아 아래 컨테이너에 담고 처리한다
        // note: if(mainPage == 'about') 이면 about_list.dart 가져오기
        if (mainPage == 'about') AboutList(),
        // if(mainPage == 'works') WorksList(),
        // if(mainPage == 'github') GithubPage(),
        // if(mainPage == 'resume') NotionPage(),
        // if(mainPage == 'contact') ContactPage(),
      ],
    );
  }
}
