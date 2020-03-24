import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/badge.dart';
import 'package:shirodoraapp/screens/details/details_home.dart';
import 'package:shirodoraapp/shared/custom_divider.dart';

class BronzeCheckbox extends StatefulWidget {
  @override
  _BronzeCheckboxState createState() => _BronzeCheckboxState();
}

class _BronzeCheckboxState extends State<BronzeCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return Column(
      children: <Widget>[
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.blue,
          title: Text('キャラクターLv1以上'),
          value: _flag.bronzeFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setBronzeFlag();
            });
          },
        ),
      ],
    );
  }
}

class SilverCheckbox extends StatefulWidget {
  final Map silver;

  SilverCheckbox({this.silver});

  @override
  _SilverCheckboxState createState() => _SilverCheckboxState();
}

class _SilverCheckboxState extends State<SilverCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return Column(
      children: <Widget>[
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.blue,
          title: Text('キャラクターLv18以上'),
          value: _flag.silverLevelFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setSilverLevelFlag();
            });
          },
        ),
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.blue,
          title: Text('${widget.silver['0']['name']}'),
          value: _flag.silverChildFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setSilverChildFlag();
            });
          },
          secondary: IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return DetailsHome(
                    cid: widget.silver['0']['id'],
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}

class GoldCheckbox extends StatefulWidget {
  final Map gold;

  GoldCheckbox({this.gold});

  @override
  _GoldCheckboxState createState() => _GoldCheckboxState();
}

class _GoldCheckboxState extends State<GoldCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return Column(
      children: <Widget>[
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.blue,
          title: Text('キャラクターLv27以上'),
          value: _flag.goldLevelFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setGoldLevelFlag();
            });
          },
        ),
        CustomDivider(),
        _goldCharacterFirst(_flag),
        CustomDivider(),
        _goldCharacterSecond(_flag),
      ],
    );
  }

  Widget _goldCharacterFirst(BadgeFlag _flag) {
    if (widget.gold['0']['name'] == '-') {
      _flag.setGoldChildFlag1();
      return Container(child: Text('未実装'));
    } else {
      return CheckboxListTile(
        activeColor: Colors.blue,
        title: Text('${widget.gold['0']['name']}'),
        value: _flag.goldChildFlag1,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setGoldChildFlag1();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.gold['0']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }

  Widget _goldCharacterSecond(BadgeFlag _flag) {
    if (widget.gold.length == 1) {
      _flag.setGoldChildFlag2();
      return Container();
    } else {
      return CheckboxListTile(
        activeColor: Colors.blue,
        title: Text('${widget.gold['1']['name']}'),
        value: _flag.goldChildFlag2,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setGoldChildFlag2();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.gold['1']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }
}

class RainbowCheckbox extends StatefulWidget {
  final Map rainbow;

  RainbowCheckbox({this.rainbow});

  @override
  _RainbowCheckboxState createState() => _RainbowCheckboxState();
}

class _RainbowCheckboxState extends State<RainbowCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return Column(
      children: <Widget>[
        CustomDivider(),
        CheckboxListTile(
          activeColor: Colors.blue,
          title: Text('キャラクターLv32以上'),
          value: _flag.rainbowLevelFlag,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool e) {
            setState(() {
              _flag.setRainbowLevelFlag();
            });
          },
        ),
        CustomDivider(),
        _rainbowCharacterFirst(_flag),
        CustomDivider(),
        _rainbowCharacterSecond(_flag),
      ],
    );
  }

  Widget _rainbowCharacterFirst(BadgeFlag _flag) {
    if (widget.rainbow['0']['name'] == '-') {
      _flag.setRainbowChildFlag1();
      return Container(
        child: Text('未実装'),
      );
    } else {
      return CheckboxListTile(
        activeColor: Colors.blue,
        title: Text('${widget.rainbow['0']['name']}'),
        value: _flag.rainbowChildFlag1,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setRainbowChildFlag1();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.rainbow['0']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }

  Widget _rainbowCharacterSecond(BadgeFlag _flag) {
    if (widget.rainbow.length == 1) {
      _flag.setRainbowChildFlag2();
      return Container();
    } else {
      return CheckboxListTile(
        activeColor: Colors.blue,
        title: Text('${widget.rainbow['1']['name']}'),
        value: _flag.rainbowChildFlag2,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool e) {
          setState(() {
            _flag.setRainbowChildFlag2();
          });
        },
        secondary: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DetailsHome(
                  cid: widget.rainbow['1']['id'],
                );
              }),
            );
          },
        ),
      );
    }
  }
}
