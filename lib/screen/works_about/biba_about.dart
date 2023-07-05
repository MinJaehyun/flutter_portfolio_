import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BibaAbout extends StatefulWidget {
  const BibaAbout({Key? key}) : super(key: key);

  @override
  State<BibaAbout> createState() => _BibaAboutState();
}

class _BibaAboutState extends State<BibaAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('''
                  What are you drinking? Biba!
          
                  🍻 마트, 편의점 맥주를 한눈에
                  요즘 뜨거운 맥주와 내 취향에 맞는 맥주를 한눈에 확인해 볼 수 있습니다!
          
                  🧡 내 입맛에 딱 맞는 취향저격 맥주
                  유저가 평가한 별점 바탕으로 개인화된 추천 서비스
                  당신의 맥주취향을 찾아드립니다.
          
                  🗃️ 나만의 맥주 저장소
                  맛있게 마셨던 맥주, 마셔보고 싶은 맥주 모두 보관함에 저장하고 기록할 수 있습니다.
                  
                  여러분의 경험을 공유해 주세요!
                  ''',
                ),
              ],
              totalRepeatCount: 1,
            ),
          ],
        ),
      ),
    );
  }
}
