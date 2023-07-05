import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MongoDBAbout extends StatefulWidget {
  const MongoDBAbout({Key? key}) : super(key: key);

  @override
  State<MongoDBAbout> createState() => MongoDBAboutState();
}

class MongoDBAboutState extends State<MongoDBAbout> {
  // note: Introduction 패키지 사용하기 위한 글로벌키 설정
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName) {
    return Image.asset('assets/works_image_center/mongodb/$assetName', fit: BoxFit.fill);
  }

  @override
  Widget build(BuildContext context) {
    // final _currentWidth = MediaQuery.of(context).size.width;
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    // note: 반환한다 페이지뷰를
    return Column(
      children: [
        Expanded(child: Container(child: buildExpandedCenterPanel(pageDecoration))),
      ],
    );
  }

  // note: page view
  Column buildExpandedCenterPanel(PageDecoration pageDecoration) {
    return Column(
      children: [
        Expanded(
          child: Container(
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
                    // decoration: pageDecoration.copyWith(
                    // bodyFlex: 2, imageFlex: 3, safeArea: 50, imageAlignment: Alignment.center
                    // ),
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
        ),
      ],
    );
  }
}
