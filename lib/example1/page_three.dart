import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Three'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              color: Colors.red,
            ),
            child: Text(
              'Back to page 2',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
