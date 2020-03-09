import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/detail.dart';

class CharacterSample extends StatefulWidget {
  @override
  _CharacterSampleState createState() => _CharacterSampleState();
}

class _CharacterSampleState extends State<CharacterSample> {
  @override
  Widget build(BuildContext context) {
    final details = Provider.of<List<Detail>>(context) ?? [];
    return Container();
  }
}
