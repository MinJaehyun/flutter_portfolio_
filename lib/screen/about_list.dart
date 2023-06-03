import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AboutList extends StatelessWidget {
  const AboutList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 11,
      fit: FlexFit.tight,
      child: Container(
        width: 1500,
        height: double.infinity,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.green),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                '안녕하세요. 풀스택을 지향하는 개발자 민재현 입니다. \n'
                '프론트엔드는 Flutter 와 Vue, 백엔드는 Node.js 와 Firebase 에 관심을 두고 있으며, \n'
                '저는 중복된 코드를 지양하고 작성한 코드를 타인이 고치기 쉽게 하는 데 중점을 두고 있습니다. \n'
                '애자일 방법론을 프로젝트에 적용하고 있으며, 학습하고 기록하며 문제를 해결하는 개발자를 목표로 하고, \n'
                '회사와 같이 성장하는 개발자의 삶을 지향하고 있습니다.',
                textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 20),
               ),
            ],
            totalRepeatCount: 1,
          ),
        ),
      ),
    );
  }
}

// pub: https://pub.dev/packages/animated_text_kit