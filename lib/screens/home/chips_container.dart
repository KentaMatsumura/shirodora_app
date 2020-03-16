import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/condition.dart';

class ChipsContainer extends StatefulWidget {
  @override
  _ChipsContainerState createState() => _ChipsContainerState();
}

class _ChipsContainerState extends State<ChipsContainer> {
  final List<String> chipList = ['ALL', '1コスト', '2コスト', '3コスト', '4コスト', '5コスト'];

  final List<String> costList = ['0', '1', '2', '3', '4', '5'];

  var selectedChoice = "ALL";

  _buildChips(searchItems) {
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
            setState(() => selectedChoice = item);
            searchItems.setCost(costList[chipList
                .indexWhere((note) => note.startsWith(selectedChoice))]);
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
      children: _buildChips(searchItems),
    );
  }
}
