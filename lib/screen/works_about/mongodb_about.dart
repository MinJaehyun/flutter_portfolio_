import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MongoDBAbout extends StatelessWidget {
  const MongoDBAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfPdfViewer.asset('assets/images/mongoDB_project.pdf')
    );
  }
}
