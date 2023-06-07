import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyNote extends StatelessWidget {
  const MyNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Flexible(
      flex: 6,
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          // color: Colors.redAccent,
          // border: Border.all(color: Colors.grey),
          border: Border(
            left: BorderSide(color: Colors.grey, width: 1.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  '테스트 중입니다..',
                  textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 20),
                ),
              ],
              totalRepeatCount: 1,
            ),
            // note: 중앙 좌측 패널
            // Flexible(
            //   // flex: 2,
            //   child: Container(
            //     // color: Colors.amber,
            //     child: null,
            //   ),
            // ),
            // // note: 중앙 우측 패널
            // Flexible(
            //   child: Container(
            //     color: Colors.greenAccent,
            //     child: null,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
