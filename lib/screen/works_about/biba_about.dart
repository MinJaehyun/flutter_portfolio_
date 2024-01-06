import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BibaAbout extends StatelessWidget {
  const BibaAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: SfPdfViewer.asset('assets/images/Biba.pdf'));
  }
}
