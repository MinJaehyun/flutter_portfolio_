import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final pdfPinchController = PdfControllerPinch(
    // todo: 이력서 변경 시, 새로 변경해야 하는 번거로움이 있다
    document: PdfDocument.openAsset('assets/pdf/mjh_resume.pdf'),
  );

  @override
  Widget build(BuildContext context) {

    return Flexible(
      flex: 11,
      fit: FlexFit.tight,
      child: Container(
        width: 1500,
        height: double.infinity,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(20.0),
        // decoration: BoxDecoration(color: Colors.green),
        child: PdfViewPinch(controller: pdfPinchController),
      ),
    );
  }
}
