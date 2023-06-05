import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

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

    return Flexible(
      flex: 11,
      fit: FlexFit.tight,
      child: Container(
        // width: 1000,
        height: double.infinity,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(20.0),
        // decoration: BoxDecoration(color: Colors.green),
        child: IntroductionScreen(
          key: introKey,
          // globalBackgroundColor: Colors.white,
          allowImplicitScrolling: true,
          // autoScrollDuration: 3000,
          done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: (){
            // todo: 완료 시, 어떡할건지 ?
          },
          next: const Icon(Icons.arrow_forward),
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