import 'package:flutter/material.dart';

class BibaSkill extends StatelessWidget {
  const BibaSkill({super.key});

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '''
              🗃️ Biba: 맥주를 좋아하는 사람들의 모임
                         2020.10 ~ 2020.11
                  코드스테이츠 프로젝트 (4명, 4주)
              ''',
              style: TextStyle(fontFamily: 'Aggro', fontSize: 40),
            ),
            Text(
              '''
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
              // style: TextStyle(fontFamily: 'Aggro', fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
