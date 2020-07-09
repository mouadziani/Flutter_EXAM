import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAppBarWidget extends StatelessWidget {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: Scaffold(
        key: _scaffoldKey,
        body: Container(
          height: 160.0,
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: Center(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Positioned(
                top: 80.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 1.0),
                        color: Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {
                            print("your menu action here");
                            _scaffoldKey.currentState.openDrawer();
                          },
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {
                            print("your menu action here");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
