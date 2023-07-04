import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MongoDBSkill extends StatefulWidget {
  const MongoDBSkill({super.key});

  @override
  State<MongoDBSkill> createState() => _MongoDBSkillState();
}

class _MongoDBSkillState extends State<MongoDBSkill> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
          child: Container(
              child: buildExpandedCenterRightPanel()),
        ),
      ],
    );
  }

  Container buildExpandedCenterRightPanel() {
    return Container(
      // color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('''
                mongoDBProject
                
                  2021.11 ~ 2022.02
                ''',
                  textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 25),
                ),
              ],
              totalRepeatCount: 1,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('''
                1. [Backend]Node.js, Express, Mongoose, MongoDB
                
                2. [Deploy]AWS
                 1) CM, EB(LB, EC2, S3, CloudWatch), Route 53, IAM
                
                3. CI(Github Action)/CD(EB)
                
                4. TDD-단위 테스트 및 통합 테스트
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
