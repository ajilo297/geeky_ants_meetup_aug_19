import 'package:flutter/material.dart';
import 'package:geeky_ants_demo/example1/page_two.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return PageTwo();
                },
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              color: Colors.red,
            ),
            child: Text('Go to page 2'),
          ),
        ),
      ),
    );
  }
}
