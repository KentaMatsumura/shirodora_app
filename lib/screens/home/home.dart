import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Shirodora App Home'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
        ),
        body: Container(

        ),
      ),
    );
  }
}
