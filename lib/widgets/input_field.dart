import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String content;
  final bool obscureText;

  InputField({this.label, this.content, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            Container(
              width: 80.0,
              child: Text(
                "${this.label}",
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              color: Colors.blue[50],
              child: TextField(
                obscureText: this.obscureText,
                style: TextStyle(
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[50],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[50],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: "${this.content}",
                  fillColor: Colors.blue[50],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
