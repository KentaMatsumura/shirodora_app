import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChipsContainer extends StatefulWidget {
  @override
  _ChipsContainerState createState() => _ChipsContainerState();
}

class _ChipsContainerState extends State<ChipsContainer> {
  bool _allCost = true;

  List<String> chipList = [
    'All',
    '1コスト',
    '2コスト',
    '3コスト',
    '4コスト',
    '5コスト',
  ];

  @override
  Widget build(BuildContext context) {
    var searchItems = Provider.of<Map>(context);

    return Provider<Map>.value(
      value: searchItems,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 8.0,
        runSpacing: 4.0,
        children: <Widget>[
          ChoiceChipWidget(chipList),
        ],
      ),
    );
  }
}

class ChoiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  ChoiceChipWidget(this.reportList);

  @override
  _ChoiceChipWidgetState createState() => new _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = List();
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          selectedColor: Colors.brown[300],
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    var searchItems = Provider.of<Map>(context);
    searchItems['cost'] = selectedChoice;
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
