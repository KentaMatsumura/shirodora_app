import 'package:flutter/material.dart';
import 'package:shirodoraapp/models/detail.dart';

class CharacterImageTable extends StatefulWidget {
  final List<Detail> characterList;

  CharacterImageTable({this.characterList});

  @override
  _CharacterImageTableState createState() => _CharacterImageTableState();
}

class _CharacterImageTableState extends State<CharacterImageTable> {
  List<Widget> images = List();

  _buildImage() {
    widget.characterList.forEach((item) {
      images.add(GestureDetector(
        onTap: () {
          print('${item.cid}');
        },
        child: Image.asset(
          'assets/${item.cid}.png',
          scale: 5.0,
        ),
      ));
    });
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: _buildImage(),
      ),
    );
  }

  void dispose(){
    super.dispose();
  }
}
