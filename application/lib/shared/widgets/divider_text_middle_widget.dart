import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerTextMiddleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
          children: <Widget>[
            Expanded(
                child: Divider()
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Text("OR"),
            ),
            Expanded(
                child: Divider()
            ),
          ]
      ),
    );
  }
}
