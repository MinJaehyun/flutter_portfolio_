import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PinterestAbout extends StatelessWidget {
  const PinterestAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfPdfViewer.asset('assets/images/Pinterest.pdf')
    );
  }
}
