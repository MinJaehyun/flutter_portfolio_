import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: IconButton(
                onPressed: () {},
                icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close)),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Portfolio'),
        centerTitle: true,
      ),
      body: Container(
        child: Row(
          children: [
            // 3개의 컨테이너 비율 지정하기
            // 비율 지정하는 방법 ? Expanded?? , flex
            Flexible(
              flex: 1,
              child: Container(color: Colors.blueAccent),
            ),
            Flexible(
              flex: 3,
              child: Container(color: Colors.greenAccent),
            ),
            Flexible(
              flex: 6,
              child: Container(color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
