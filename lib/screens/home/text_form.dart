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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Character Name',
            ),
            validator: (val) => val.isEmpty ? 'Enter an email' : null,
            onChanged: (val) {
              setState(() => searchItems['name'] = val);
            },
            cursorColor: Colors.brown, // カーソルの色
          ),
          RaisedButton(
            color: Colors.pink[400],
            child: Text(
              'Search',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
          ),
        ],
      ),
    );
  }
}
