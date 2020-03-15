import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/condition.dart';

class TextForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var searchItems = Provider.of<Condition>(context);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Character Name',
            ),
            onChanged: (val) => searchItems.setName(val),
            cursorColor: Colors.brown, // カーソルの色
          ),
        ],
      ),
    );
  }
}
