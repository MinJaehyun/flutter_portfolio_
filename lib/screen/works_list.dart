import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screen/works_center_panel/biba.dart';
import 'package:flutter_portfolio/screen/works_center_panel/django.dart';
import 'package:flutter_portfolio/screen/works_center_panel/mongodb.dart';
import 'package:flutter_portfolio/screen/works_center_panel/my_note.dart';

class WorksList extends StatefulWidget {
  WorksList(this._selectedWork, {Key? key}) : super(key: key);
  String _selectedWork;

  @override
  State<WorksList> createState() => _WorksListState();
}

class _WorksListState extends State<WorksList> {
  // note: selectedWork 를 빈문자열 처리하면 4개의 프로젝트를 선택해야만 화면에 나타낼 수 있게 설정된다
  // String selectedWork = '';
  String selectedWork = 'mongoDB';

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedWork = widget._selectedWork;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _currentWidth = MediaQuery.of(context).size.width;

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
                    // note: works 클릭 시, _currentWidth > 960 이상만 보여주고 이하면 works 작업 내용 안 보인다
                    child: _currentWidth > 960
                        ? Container(
                            padding: EdgeInsets.all(12),
                            child: ListView.separated(
                              separatorBuilder: (context, index) => Divider(height: 5, color: Colors.white),
                              itemCount: works_image_left.length,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height: 180,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        // print(works_image_left[index]);
                                        // note: 'assets/works_image_left/mongoDB.png' 값 출력하는데, /끝에 mongoDB 만 받기 위한 작업
                                        var selectWork = works_image_left[index].split('/')[2].split('.')[0];
                                        selectedWork = selectWork;
                                      });
                                    },
                                    icon: Image.asset(works_image_left[index]),
                                  ),
                                );
                              },
                            ),
                          )
                        // note: 삼항연산자 맞춰주기 위한 빈박스
                        : SizedBox(),
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
        ),
      ),
    );
  }
}
