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
  String mainPage = 'works';

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
                    // note: 1400 이상이면서(&&), 클릭한 대상이면 애니메이션 적용하여 text 나타내기
                    if ((constraints.maxWidth > 1400) && (mainPage == 'about'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('ABOUT'),
                        ],
                        repeatForever: true,
                      )
                      // note: 크기가 1400 이상이고, 클릭한 대상이 아니면 text 만 나타내기
                    else if (constraints.maxWidth > 1400) Text('ABOUT')
                  ],
                ),
                // note: 이력서
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'resume'),
                      icon: Icon(
                        Icons.note_outlined,
                      ),
                    ),
                    if ((constraints.maxWidth > 1400) && (mainPage == 'resume'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('RESUME'),
                        ],
                        repeatForever: true,
                      )
                    else if (constraints.maxWidth > 1400) Text('RESUME')
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'works'),
                      icon: Icon(Icons.build_outlined),
                    ),
                    if ((constraints.maxWidth > 1400) && (mainPage == 'works'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('WORKS'),
                        ],
                        repeatForever: true,
                      )
                    else if (constraints.maxWidth > 1400) Text('WORKS')
                  ],
                ),
                // note: 깃헙 페이지 삭제 -> 추 후 사용할 공간 남겨둠
                // Column(
                //   children: [
                //     IconButton(
                //       onPressed: () => setState(() => mainPage = 'github'),
                //       icon: Icon(Icons.account_circle_outlined),
                //     ),
                //     if ((constraints.maxWidth > 1400) && (mainPage == 'github'))
                //       AnimatedTextKit(
                //         animatedTexts: [
                //           WavyAnimatedText('GITHUB'),
                //         ],
                //         repeatForever: true,
                //       )
                //     else if (constraints.maxWidth > 1400) Text('GITHUB')
                //   ],
                // ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => mainPage = 'contact'),
                      icon: Icon(Icons.contact_mail_outlined),
                    ),
                    if ((constraints.maxWidth > 1400) && (mainPage == 'contact'))
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('CONTACT'),
                        ],
                        repeatForever: true,
                      )
                    else if (constraints.maxWidth > 1400) Text('CONTACT')
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
        // if (mainPage == 'github') GithubPage(),
        if (mainPage == 'contact') ContactPage(),
      ],
    );
  }
}
