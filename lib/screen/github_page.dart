import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class GithubPage extends StatelessWidget {
  const GithubPage({Key? key}) : super(key: key);

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
        // decoration: BoxDecoration(color: Colors.green),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                '테스트 중입니다..',
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