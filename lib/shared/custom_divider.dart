import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.brown[50],
      thickness: 2.0,
      indent: 25.0,
    );
  }
}
