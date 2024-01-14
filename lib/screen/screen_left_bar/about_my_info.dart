import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class AboutMyInfo extends StatelessWidget {
  const AboutMyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              '''
              안녕하세요. 민 재현입니다.
              
              저는 풀스택을 지향하며 작업 계획을 짧은 단위로 세우고 만들어진 시제품을,
              소비자의 피드백을 받아 개선할 부분에 구체적 계획을 세워 개발하고 있습니다.
              
              그리고 성능을 낮추지 않는 한에서 불필요한 코드 및 중복된 코드를 제거하고, 
              타인이 보기 쉬은 코드를 작성하는 데 중점을 두고 있습니다 
              
              꾸준히 학습하고 기록하며 문제를 해결하는 개발자의 삶을 살며, 
              회사와 같이 성장하는 개발자를 목표로 하고 있습니다.
              ''',
              textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 20),
            ),
          ],
          totalRepeatCount: 1,
        ),
      ),
    );
  }
}
