import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/character.dart';

class StatusListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final characterData = Provider.of<Character>(context) ??
        Character(cid: 0, name: '', skill: {}, ability: {});

    List<Widget> statusList = List();

    // The entire multilevel list displayed by this app.
    final List<Entry> data = <Entry>[
      Entry(
        'スキル',
        <Entry>[
          Entry(
            '${characterData.skill['skill_name']}',
            <Entry>[
              Entry('${characterData.skill['skill_comment']}'),
            ],
          ),
        ],
      ),
      Entry(
        'アビリティ',
        <Entry>[
          Entry(
            '${characterData.ability['ability_name']}',
            <Entry>[
              Entry(
                'Lv1:リーダー以外の時に有効',
                <Entry>[
                  Entry('${characterData.ability['ability_lv1']}'),
                ],
              ),
              Entry(
                'Lv2:サブリーダーの時に有効',
                <Entry>[
                  Entry('${characterData.ability['ability_lv2']}'),
                ],
              ),
              Entry(
                'Lv3:リーダーの時に有効',
                <Entry>[
                  Entry('${characterData.ability['ability_lv3']}'),
                ],
              ),
            ],
          ),
        ],
      ),
    ];

    data.forEach((f) {
      statusList.add(EntryItem(f));
    });
    return Center(
      child: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: statusList,
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
