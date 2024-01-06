import 'package:flutter/material.dart';

class ChattingAppSkill extends StatelessWidget {
  const ChattingAppSkill({super.key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '''
            
            
            
            사용한 기술
              [Frontend] Flutter, Dart
              [Backend] Firebase
            '''


            '''
            
            
      
            사용한 패키지
              fluttertoast: ^8.1.2  
              flutter_dotenv: ^5.0.2 
              google_fonts: ^3.0.1 
              firebase_core: ^2.4.1
              firebase_auth: 
              firebase_storage: ^11.0.16
              cloud_firestore: ^4.3.1 
              image_picker: ^0.8.7
              modal_progress_hud_nsn: ^0.3.0 
              google_sign_in: ^6.0.2 
              flutter_chat_bubble: ^2.0.2 
          ''')
        ],
      ),
    );
  }
}
