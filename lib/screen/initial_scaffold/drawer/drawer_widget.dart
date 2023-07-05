import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget(this.changeMainPage, {super.key});
  final Function(String work) changeMainPage;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String mainPage = 'about';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(12),
        children: [
          DrawerHeader(
            // note: DrawerHeader 내에 Divider 제거
            decoration: BoxDecoration(border: Border(bottom: Divider.createBorderSide(context, color: Colors.white70))),
            child: TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Close', style: TextStyle(color: Colors.redAccent))),
          ),
          // note: 클릭 시, 해당 페이지 보여줌
          _buildListTile(mainPage: 'about', mainText: 'ABOUT', icon: Icon(Icons.perm_identity_outlined)),
          _buildListTile(mainPage: 'resume', mainText: 'RESUME', icon: Icon(Icons.note_outlined)),
          _buildListTile(mainPage: 'works', mainText: 'WORKS', icon: Icon(Icons.build_outlined)),
          _buildListTile(mainPage: 'contact', mainText: 'CONTACT', icon: Icon(Icons.contact_mail_outlined)),
        ],
      ),
    );
  }

  // note: Drawer -> ListView 내 중복 코드
  Column _buildListTile({required String mainPage, required String mainText, required Icon icon}) {
    return Column(
      children: [
        ListTile(
          onTap: () => widget.changeMainPage(mainPage),
          leading: icon,
          title: Text(mainText),
          trailing: Icon(Icons.arrow_forward),
        ),
        SizedBox(height: 120),
      ],
    );
  }
}
