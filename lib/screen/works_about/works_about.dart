// testing...
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class WorksAbout extends StatefulWidget {
  WorksAbout({super.key});
  late final projectName;

  setPdfAssetPath(String path) {
    projectName = path; // pdfAssetPath를 설정하는 메서드
  }

  @override
  State<WorksAbout> createState() => _WorksAboutState();
}

class _WorksAboutState extends State<WorksAbout> {


  @override
  Widget build(BuildContext context) {
    print('widget.projectName: ${widget.projectName}');
    return Container(
        child: SfPdfViewer.asset('assets/images/${widget.projectName}.pdf'),
        // child: SfPdfViewer.asset('assets/images/vuestagram_note.pdf')
    );
  }
}
