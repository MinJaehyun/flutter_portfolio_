import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ChattingAppAbout extends StatelessWidget {
  const ChattingAppAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfPdfViewer.asset('assets/images/chatting_app.pdf')
    );
  }
}
