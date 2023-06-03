import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return buildRow(constraints);
          },
        ),
      ),
    );
  }

  Row buildRow(BoxConstraints constraints) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // note: 길이 확인: Text(constraints.maxWidth.toString()),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.perm_identity_outlined),
                    ),
                    if (constraints.maxWidth > 1400) Text('ABOUT'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.build_outlined),
                    ),
                    if (constraints.maxWidth > 1400) Text('WORKS'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.note_outlined,
                      ),
                    ),
                    if (constraints.maxWidth > 1400) Text('BLOG'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.format_list_numbered_rtl_outlined,
                      ),
                    ),
                    if (constraints.maxWidth > 1400) Text('NOTION'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/images/left_list/github-5.svg'),
                    ),
                    if (constraints.maxWidth > 1400) Text('GITHUB'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.contact_mail_outlined),
                    ),
                    if (constraints.maxWidth > 1400) Text('CONTACT'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 11,
          child: Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(color: Colors.greenAccent),
          ),
        ),
      ],
    );
  }
}
