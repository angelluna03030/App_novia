import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 39, 39, 255);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Color.fromARGB(255, 0, 122, 255),

 Color.fromARGB(255, 40, 206, 86),

  Color.fromARGB(255, 72, 255, 0),
  Color.fromARGB(255, 255, 1, 94),
  Color.fromARGB(255, 41, 255, 30),
  Color.fromARGB(255, 0, 191, 255),
];

class AddThme {
  final int SelecterColor;
  AddThme({this.SelecterColor = 0})
      : assert(SelecterColor >= 0 && SelecterColor <= _colorThemes.length -1 ,
            'solo los numero esta hasta el ${_colorThemes.length}' );

  ThemeData theme() {
    return (ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[SelecterColor]));
  }
}
