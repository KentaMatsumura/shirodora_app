import 'package:flutter/material.dart';
import 'package:shirodoraapp/models/detail.dart';

class SampleLayout extends StatefulWidget {
  final List<Detail> characterList;

  SampleLayout({this.characterList});

  @override
  _SampleLayoutState createState() => _SampleLayoutState();
}

class _SampleLayoutState extends State<SampleLayout> {
  List<Widget> images = List();

  _buildImage() {
    widget.characterList.forEach((item) {
      images.add(Image.asset(
        'assets/${item.cid}.png',
        scale: 5.0,
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
}
