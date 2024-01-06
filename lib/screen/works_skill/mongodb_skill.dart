import 'package:flutter/material.dart';

class MongoDBSkill extends StatelessWidget {
  const MongoDBSkill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(child: buildExpandedCenterRightPanel()),
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
            Text(
              '''
              사용한 기술
              
              1. [Backend]Node.js, Express, Mongoose, MongoDB
              
              2. [Deploy]AWS
               1) CM, EB(LB, EC2, S3, CloudWatch), Route 53, IAM
              
              3. CI(Github Action)/CD(EB)
              
              4. TDD-단위 테스트 및 통합 테스트
              ''',
            ),
          ],
        ),
      ),
    );
  }
}
