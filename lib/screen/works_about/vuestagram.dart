import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class VuestagramAbout extends StatelessWidget {
  const VuestagramAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfPdfViewer.asset('assets/images/vuestagram_note.pdf')
    );
  }
}
