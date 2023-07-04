import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BibaSkill extends StatefulWidget {
  const BibaSkill({super.key});

  @override
  State<BibaSkill> createState() => _BibaSkillState();
}

class _BibaSkillState extends State<BibaSkill> {
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
                  🗃️ Biba: 맥주를 좋아하는 사람들의 모임
                             2020.10 ~ 2020.11
                      코드스테이츠 프로젝트 (4명, 4주)
                  ''',
                  textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 25),
                ),
              ],
              totalRepeatCount: 1,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('''
                  🗃️ [Deploy] AWS - EC2, LB, S3, CloudFront, RDS, Route 53, Certification Manager, aws-cli
                  🗃️ [Backend] Node.js, Express, Mysql, Sequelize, Multer, JWT, ENV
                  
                  1. 초기 개발 환경
                    1) 프로젝트 상세 기획 및 전체 아웃 라인, 프로토 타입 설계
                    2) Typescript + Prettier + ESLint
                    3) DB Schema
                  
                  2. User 컨트롤러 api 구현
                    1) signup / login / logout
                    2) changePassword / changeNickname
                    3) checkEmail / checkNickname
                  
                  3. multer-s3 
                    1) client 에서 s3 에 image 등록 및 삭제                
                  ''',
                  // textStyle: TextStyle(fontFamily: 'Aggro', fontSize: 18),
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
