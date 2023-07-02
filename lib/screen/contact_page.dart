import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

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
        child: Center(
          child: Container(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.green, minimumSize: Size(200, 50)),
                      onPressed: null,
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text('민재현'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.green, minimumSize: Size(200, 50)),
                      onPressed: null,
                      child: Text(
                        'Age',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text('만 40'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.green, minimumSize: Size(200, 50)),
                      onPressed: null,
                      child: Text(
                        'Phone',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text('010-7339-6954'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.green, minimumSize: Size(200, 50)),
                      onPressed: null,
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text('krism2891@gmail.com'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.green, minimumSize: Size(200, 50)),
                      onPressed: null,
                      child: Text(
                        'Address',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text('화성시 기안동'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// pub: https://pub.dev/packages/animated_text_kit
