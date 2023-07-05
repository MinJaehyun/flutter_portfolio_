import 'package:flutter/material.dart';

class InitAppBarWidget extends StatefulWidget {
  const InitAppBarWidget({super.key});

  @override
  State<InitAppBarWidget> createState() => _InitAppBarWidgetState();
}

class _InitAppBarWidgetState extends State<InitAppBarWidget> {

  @override
  Widget build(BuildContext context) {
    // note: 사이즈 960 이상이면 AppBar 숨김
    final currentWidth = MediaQuery.of(context).size.width;
    return currentWidth < 960 ? _buildAppBar(color: Colors.lightGreen, isBool: true) : _buildAppBar(color: Colors.lightBlueAccent, isBool: false);
  }
  // note: AppBar 내 중복 코드 개선
  AppBar _buildAppBar({required color, required bool isBool}) {
    return AppBar(
      title: Text('Portfolio', style: TextStyle(color: Colors.blueAccent)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color, Colors.white70],
          ),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      // 메뉴바 icon 색상 지정
      iconTheme: IconThemeData(color: Colors.blueAccent),
      // note: appbar 내 icon btn 제거 방법
      automaticallyImplyLeading: isBool,
    );
  }

}
