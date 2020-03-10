import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/detail.dart';
import 'package:shirodoraapp/screens/home/sample_layout.dart';

class CharacterTable extends StatefulWidget {
  @override
  _CharacterTableState createState() => _CharacterTableState();
}

class _CharacterTableState extends State<CharacterTable> {
  @override
  Widget build(BuildContext context) {
    final details = Provider.of<List<Detail>>(context) ?? [];
    details.sort((a, b) => a.cid - b.cid);
    return Container(
      child: SampleLayout(characterList: details,),
    );
  }
}
