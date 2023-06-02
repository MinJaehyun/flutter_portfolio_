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
            // note: mobile_body
            if (constraints.maxWidth < 1400) {
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
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.build_outlined),
                              ),
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
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset('assets/images/left_list/github-5.svg'),
                              ),
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
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ],
              );
            }
            // note: desktop_body
            else {
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
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.perm_identity_outlined),
                              ),
                              Text('ABOUT'),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.build_outlined),
                              ),
                              Text('WORKS'),
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
                              Text('BLOG'),
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
                              Text('NOTION'),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset('assets/images/left_list/github-5.svg'),
                              ),
                              Text('GITHUB'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // note: 우측 컨테이너
                  Flexible(
                    flex: 11,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      padding: EdgeInsets.all(20.0),
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
