import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screen/works_center_panel/biba.dart';
import 'package:flutter_portfolio/screen/works_center_panel/django.dart';
import 'package:flutter_portfolio/screen/works_center_panel/mongodb.dart';
import 'package:flutter_portfolio/screen/works_center_panel/my_note.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

class WorksList extends StatefulWidget {
  const WorksList({Key? key}) : super(key: key);

  @override
  State<WorksList> createState() => _WorksListState();
}

class _WorksListState extends State<WorksList> {
  var selectedWork = 'mongoDB';

  @override
  Widget build(BuildContext context) {
    List<String> works_image_left = [
      'assets/works_image_left/mongoDB.png',
      'assets/works_image_left/my_note.png',
      'assets/works_image_left/django.png',
      'assets/works_image_left/biba.png',
    ];

    return Flexible(
      flex: 11,
      fit: FlexFit.tight,
      child: Container(
          width: 1500,
          height: double.infinity,
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.all(20.0),
          // decoration: BoxDecoration(color: Colors.green),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Row(
                  children: [
                    // note: 좌측 패널
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.grey, width: 1.0),
                            // right: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          // color: Colors.blueAccent
                        ),
                        child: ListView.separated(
                          separatorBuilder: (context, index) => Divider(height: 135, color: Colors.white),
                          itemCount: works_image_left.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 180,
                              child: IconButton(
                                onPressed: () {
                                  setState(
                                        () {
                                      // print(works_image_left[index]); // 'assets/works_image_left/mongoDB.png' 값을 출력하는데, /끝에 mongoDB 만 받고 싶다
                                      var selectWork = works_image_left[index].split('/')[2].split('.')[0];
                                      selectedWork = selectWork;
                                    },
                                  );
                                },
                                icon: Image.asset(
                                  works_image_left[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    // note: 우측 패널
                    // my_note, django, biba
                    if (selectedWork == 'mongoDB') MongoDB(),
                    if (selectedWork == 'my_note') MyNote(),
                    if (selectedWork == 'django') Django(),
                    if (selectedWork == 'biba') Biba(),
                  ],
                ),
              );
            },
          )),
    );
  }
}

// pub: https://pub.dev/packages/animated_text_kit
