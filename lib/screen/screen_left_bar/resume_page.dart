import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    Widget _buildFullscreenImage(String assetName) {
      return Image.asset(
        'assets/resume_image/$assetName',
        fit: BoxFit.cover,
        width: 650.0,
        alignment: Alignment.center,
      );
    }

    return Expanded(
      child: Container(
        margin: EdgeInsets.all(12.0),
        child: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors.black12,
          allowImplicitScrolling: true,
          // autoScrollDuration: 3000,
          showBackButton: true,
          back: const Icon(Icons.arrow_back_ios),
          next: const Icon(Icons.arrow_forward_ios),
          done: const Text('이력서 페이지로 이동', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () async {
            // note: launchUrl 패키지 사용하여 페이지 이동
            final url = Uri.parse('https://www.notion.so/8a839ad1cac74978bfd43ba496c6f165');
            if (await canLaunchUrl(url)) {
              launchUrl(url);
            } else {
              print("Can't launch $url");
            }
          },
          pages: [
            PageViewModel(
              title: "",
              body: "",
              image: _buildFullscreenImage('mjh_resume_1.png'),
              decoration: pageDecoration.copyWith(
                contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                fullScreen: true,
              ),
            ),
            PageViewModel(
              title: "",
              body: "",
              image: _buildFullscreenImage('mjh_resume_2.png'),
              decoration: pageDecoration.copyWith(
                contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                fullScreen: true,
              ),
            ),
            PageViewModel(
              title: "",
              body: "",
              image: _buildFullscreenImage('mjh_resume_3.png'),
              decoration: pageDecoration.copyWith(
                contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                fullScreen: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// fixme: 추 후, pageview 를 helper/pageview.dart 만들어서 개선하기
// resume_page 와 works_list 에 page view 를 구현하고 있다