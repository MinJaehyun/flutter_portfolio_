import 'package:flutter/material.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {

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
        child: Text('test resume page'),
      ),
    );
  }
}
