import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helper/color_schemes.g.dart';
import 'package:flutter_portfolio/screen/init_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode brightness = ThemeMode.light;

  void changeBrightness() {
    setState(() {
      brightness == ThemeMode.light ? brightness = ThemeMode.dark : brightness = ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // note: 폰트를 전체 앱에 적용시키기 위한 설정: ThemeData 의 fontFamily 속성 추가
      theme: ThemeData(
        fontFamily: 'Aggro',
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white, brightness: Brightness.light),
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        fontFamily: 'Aggro',
        // 변경 전: colorScheme: ColorScheme.fromSeed(seedColor: Colors.black, brightness: Brightness.dark),
        // note: 변경 후: 색상을 스키마로 설정하여 가져옴. 추 후 스키마는 변경하지 않고, primary 같은 속성을 가져와서 특정 부위를 변경할 수 있다
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      // note: 버튼 클릭 시, ThemeMode.light 또는 ThemeMode.dark 로 바꾼다.
      themeMode: brightness,
      title: 'Portfolio',
      initialRoute: '/',
      routes: {
        '/': (context) => InitPage(changeBrightness: changeBrightness, brightness: brightness),
      },
    );
  }
}
