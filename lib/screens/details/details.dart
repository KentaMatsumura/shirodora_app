import 'package:flutter/material.dart';
import 'package:shirodoraapp/screens/home/text_form.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Shirodora App Details'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              child: Container(
                child: Text('Character List'),
              ),
            ),
            Container(
              child: TextForm(),
            ),
          ],
        ),
      ),
    );
  }
}
