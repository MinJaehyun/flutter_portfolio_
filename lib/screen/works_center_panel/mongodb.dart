import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MongoDB extends StatefulWidget {
  const MongoDB({Key? key}) : super(key: key);

  @override
  State<MongoDB> createState() => _MongoDBState();
}

class _MongoDBState extends State<MongoDB> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName) {
    return Image.asset('assets/works_image_center/mongodb/$assetName', fit: BoxFit.fill);
  }

  @override
  Widget build(BuildContext context) {
    final _currentWidth = MediaQuery.of(context).size.width;
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Flexible(
      flex: 12,
      child: Container(
        padding: EdgeInsets.all(12.0),
        // note: pageview 좌측에 실선 사이즈 960 이하면 없애기
        decoration: _currentWidth > 960
            ? BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey, width: 1.0),
                ),
              )
            : null,
        child: _currentWidth > 960
            ? Row(
                children: [
                  // note: 중앙 좌측 패널
                  buildFlexibleCenterPanel(pageDecoration),
                  VerticalDivider(),
                  // note: works-center-right- 몽고디비 패널
                  buildFlexibleCenterRightPanel(),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        buildFlexibleCenterPanel(pageDecoration),
                        Divider(height: 15),
                        buildFlexibleCenterRightPanel(),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Flexible buildFlexibleCenterRightPanel() {
    return Flexible(
      flex: 5,
      child: Container(
        // color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'mongoDBProject\n'
                    '2021.11 ~ 2022.02\n'
                    '\n',
                    textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 25),
                  ),
                ],
                totalRepeatCount: 1,
              ),
              AnimatedTextKit(
                animatedTexts: [TypewriterAnimatedText('\n\n')],
                totalRepeatCount: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      '1. [Backend]Node.js, Express, Mongoose, MongoDB\n'
                      '2. [Deploy]AWS\n '
                      '- CM, EB(LB, EC2, S3, CloudWatch), Route 53, IAM\n'
                      '3. CI(Github Action)/CD(EB)\n'
                      '4. TDD-단위 테스트 및 통합 테스트',
                      textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 18),
                    ),
                  ],
                  totalRepeatCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Flexible buildFlexibleCenterPanel(PageDecoration pageDecoration) {
    return Flexible(
      flex: 5,
      child: Container(
        alignment: Alignment.center,
        // color: Colors.amber,
        child: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors.white10,
          // allowImplicitScrolling: true,
          // autoScrollDuration: 3000,
          // globalHeader: Align(
          //   alignment: Alignment.topRight,
          //   child: SafeArea(
          //     child: Padding(
          //       padding: const EdgeInsets.only(top: 16, right: 16),
          //       child: _buildImage('flutter.png'),
          //     ),
          //   ),
          // ),
          done: const Text('배포 링크', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () async {
            final url = Uri.parse('https://www.mjhweb.xyz/');
            if (await canLaunchUrl(url)) {
              launchUrl(url);
            } else {
              print("Can't launch $url");
            }
          },
          next: const Icon(Icons.arrow_forward_ios),
          showBackButton: true,
          back: const Icon(Icons.arrow_back_ios),
          pages: [
            PageViewModel(
                title: "",
                body: "mongoDB project 구현 기능",
                image: _buildImage('1.png'),
                decoration: pageDecoration.copyWith(
                    // bodyFlex: 2,
                    // imageFlex: 3,
                    // safeArea: 50,
                    // imageAlignment: Alignment.center
                    ),
                reverse: true),
            PageViewModel(
                title: "",
                body: "APIs",
                image: _buildImage('2.png'),
                decoration: pageDecoration.copyWith(
                  // note: 기존 pageDecoration 에 .copyWith 사용하여 속성 추가
                  // note: 사진을 크게 설정함 - 단점: 하단 dots 영역 침범
                  fullScreen: true,
                ),
                reverse: true),
            PageViewModel(
              title: "",
              body: "NoSQL DB Design",
              image: _buildImage('3.png'),
              decoration: pageDecoration,
              reverse: true,
            ),
            PageViewModel(
              title: "",
              body: "Deploy Flow",
              image: _buildImage('4.png'),
              decoration: pageDecoration,
              reverse: true,
            ),
            PageViewModel(
              title: "",
              body: "TDD",
              image: _buildImage('5.png'),
              decoration: pageDecoration,
              reverse: true,
            ),
          ],
        ),
      ),
    );
  }
}
