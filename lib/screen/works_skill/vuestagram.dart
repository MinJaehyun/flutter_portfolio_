import 'package:flutter/material.dart';

class VuestagramSkill extends StatelessWidget {
  const VuestagramSkill({super.key});

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('''
    사용한 기술
    
    [Frontend] Vue, Vuex
    [Backend] Node.js, express, mongoose, MongoDB
    [Deploy] Netlify, Heroku, DB: MongoDB Atlas
    Tensorflow.js - MobileNet
      ImageNet 데이터베이스의 라벨로 이미지를 분류하여 태그를 자동으로 등록
            ''')
          ],
        ),
      ),
    );
  }
}
