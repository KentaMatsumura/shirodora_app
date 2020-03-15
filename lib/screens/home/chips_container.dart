import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/condition.dart';

class ChipsContainer extends StatelessWidget {
  final List<String> chipList = ['ALL', '1コスト', '2コスト', '3コスト', '4コスト', '5コスト'];

  final List<String> costList = ['', '1', '2', '3', '4', '5'];

  _buildChoiceList(searchItems) {
    var selectedChoice = "ALL";

    List<Widget> choices = List();
    chipList.forEach((item) {
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
            searchItems.setCost(item);
            selectedChoice = item;
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    var searchItems = Provider.of<Condition>(context);

    return Wrap(
      direction: Axis.horizontal,
      spacing: 8.0,
      runSpacing: 4.0,
      children: _buildChoiceList(searchItems),
    );
  }
}
