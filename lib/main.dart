import 'package:flutter/material.dart';
import 'package:geeky_ants_demo/example1/page_one.dart';
import 'package:geeky_ants_demo/master_detail/master_detail.dart';


void main() => runApp(MainApplication());

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageOne(),
    );
  }
}
