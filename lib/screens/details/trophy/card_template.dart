import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/trophy.dart';
import 'package:shirodoraapp/screens/details/details_home.dart';
import 'package:shirodoraapp/shared/custom_divider.dart';

class D3CheckBox extends StatefulWidget {
  @override
  _D3CheckBoxState createState() => _D3CheckBoxState();
}

class _D3CheckBoxState extends State<D3CheckBox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<TrophyFlag>(context);
    return Column(
      children: <Widget>[
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.orange,
          title: Text('キャラクターLv10以上'),
          value: _flag.d3Flag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setD3Flag();
            });
          },
        )
      ],
    );
  }
}

class D2CheckBox extends StatefulWidget {
  final Map d2;

  D2CheckBox({this.d2});

  @override
  _D2CheckBoxState createState() => _D2CheckBoxState();
}

class _D2CheckBoxState extends State<D2CheckBox> {
  Widget _d2CharacterFirst(TrophyFlag _flag) {
    if (widget.d2['0']['name'] == '-') {
      _flag.setD2ChildFlag1();
      return Container(child: Text('未実装'));
    } else {
      return CheckboxListTile(
        activeColor: Colors.orange,
        title: Text('${widget.d2['0']['name']}'),
        value: _flag.d2ChildFlag1,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setD2ChildFlag1();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.d2['0']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }

  Widget _d2CharacterSecond(TrophyFlag _flag) {
    if (widget.d2.length == 1) {
      _flag.setD2ChildFlag2();
      return Container();
    } else {
      return CheckboxListTile(
        activeColor: Colors.orange,
        title: Text('${widget.d2['1']['name']}'),
        value: _flag.d2ChildFlag2,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setD2ChildFlag2();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.d2['1']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<TrophyFlag>(context);
    print('${widget.d2}');
    return Column(
      children: <Widget>[
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.orange,
          title: Text('キャラクターLv20以上'),
          value: _flag.d2LevelFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setD2LevelFlag();
            });
          },
        ),
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.orange,
          title: Text('うまP200以上'),
          value: _flag.d2UmapFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setD2UmapFlag();
            });
          },
        ),
        CustomDivider(),
        _d2CharacterFirst(_flag),
        CustomDivider(),
        _d2CharacterSecond(_flag),
      ],
    );
  }
}

class D1CheckBox extends StatefulWidget {
  final Map d1;

  D1CheckBox({this.d1});

  @override
  _D1CheckBoxState createState() => _D1CheckBoxState();
}

class _D1CheckBoxState extends State<D1CheckBox> {
  Widget _d1CharacterFirst(TrophyFlag _flag) {
    if (widget.d1['0']['name'] == '-') {
      _flag.setD1ChildFlag1();
      return Container(child: Text('未実装'));
    } else {
      return CheckboxListTile(
        activeColor: Colors.orange,
        title: Text('${widget.d1['0']['name']}'),
        value: _flag.d1ChildFlag1,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setD1ChildFlag1();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.d1['0']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }

  Widget _d1CharacterSecond(TrophyFlag _flag) {
    if (widget.d1.length == 1) {
      _flag.setD1ChildFlag2();
      return Container();
    } else {
      return CheckboxListTile(
        activeColor: Colors.orange,
        title: Text('${widget.d1['1']['name']}'),
        value: _flag.d1ChildFlag2,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setD1ChildFlag2();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.d1['1']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<TrophyFlag>(context);
    return Column(
      children: <Widget>[
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.orange,
          title: Text('キャラクターLv30以上'),
          value: _flag.d1LevelFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setD1LevelFlag();
            });
          },
        ),
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.orange,
          title: Text('うまP800以上'),
          value: _flag.d1UmapFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setD1UmapFlag();
            });
          },
        ),
        CustomDivider(),
        _d1CharacterFirst(_flag),
        CustomDivider(),
        _d1CharacterSecond(_flag),
      ],
    );
  }
}

class D0CheckBox extends StatefulWidget {
  final bool d0;

  D0CheckBox({this.d0});

  @override
  _D0CheckBoxState createState() => _D0CheckBoxState();
}

class _D0CheckBoxState extends State<D0CheckBox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<TrophyFlag>(context);
    if (widget.d0) {
      return Column(
        children: <Widget>[
          CustomDivider(),
          CheckboxListTile(
            activeColor: Colors.orange,
            title: Text('キャラクターLv30以上'),
            value: _flag.d0LevelFlag,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool e) {
              setState(() {
                _flag.setD0LevelFlag();
              });
            },
          ),
          CustomDivider(),
          CheckboxListTile(
            activeColor: Colors.orange,
            title: Text('スキルLv10以上'),
            value: _flag.d0SkillFlag,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool e) {
              setState(() {
                _flag.setD0SkillFlag();
              });
            },
          ),
          CustomDivider(),
          CheckboxListTile(
            activeColor: Colors.orange,
            title: Text('うまP1400以上'),
            value: _flag.d0UmapFlag,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool e) {
              setState(() {
                _flag.setD0UmapFlag();
              });
            },
          ),
        ],
      );
    } else {
      _flag.setD0SkillFlag();
      _flag.setD0LevelFlag();
      _flag.setD0UmapFlag();
      return Column(
        children: <Widget>[
          CustomDivider(),
          Container(child: Text('未実装')),
          CustomDivider(),
        ],
      );
    }
  }
}
