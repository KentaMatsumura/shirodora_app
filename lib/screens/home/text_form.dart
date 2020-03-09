import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextForm extends StatefulWidget {
  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var searchItems = Provider.of<Map>(context);
    String searchValue = '';
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Character Name',
            ),
            onChanged: (val) {
              setState(() => searchItems['name'] = val);
            },
            cursorColor: Colors.brown, // カーソルの色
          ),
        ],
      ),
    );
  }
}
