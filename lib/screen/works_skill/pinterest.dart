import 'package:flutter/material.dart';

class PinterestSkill extends StatelessWidget {
  const PinterestSkill({super.key});

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
                    사용 기술
                                 
    Front-End : Html5, css, javascript, django-bootstrap4, 
    Back-End  : Python, Django web framework, mariadb, Nginx, Gunicorn,  
    Common    : POSTMAN, FileZilla, Git, Github, Docker, Portainer, AWS EC2, AWS Load Balancer, AWS Route53, AWS Elastic IP, 
            ''')
          ],
        ),
      ),
    );
  }
}
