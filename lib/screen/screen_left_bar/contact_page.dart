import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRow(key: 'Name', value: '민재현'),
              _buildRow(key: 'Age', value: '만 40'),
              _buildRow(key: 'Phone', value: '010-7339-6954'),
              _buildRow(key: 'Email', value: 'krism2891@gmail.com'),
              _buildRow(key: 'Address', value: '화성시 기안동'),
            ],
          ),
        ),
      ),
    );
  }
  // note: 중복 코드 개선
  Row _buildRow({required String key, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            disabledBackgroundColor: Colors.green,
            minimumSize: Size(200, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          onPressed: null,
          child: Text(key, style: TextStyle(color: Colors.white)),
        ),
        Text(value),
        SizedBox(height: 65),
      ],
    );
  }
}
