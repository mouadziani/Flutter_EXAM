import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {

  double _height;
  double _width;
  Color _color;

  VerticalDividerWidget([this._height = 30.0, this._width = 1.0, this._color = Colors.grey]);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      color: _color,
    );
  }

}
