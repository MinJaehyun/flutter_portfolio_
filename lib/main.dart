import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screen/init_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // note: 폰트를 전체 앱에 적용시키기 위한 설정: ThemeData 의 fontFamily 속성 추가
      theme: ThemeData(
        fontFamily: 'Aggro',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white, brightness: Brightness.light),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        fontFamily: 'Aggro',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      title: 'Portfolio',
      initialRoute: '/',
      routes: {
        '/': (context) => InitPage(),
      },
    );
  }
}
