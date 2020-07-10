import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/services/authentication.dart';

class SearchAppBarWidget extends StatelessWidget {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  SearchAppBarWidget({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  signOut() async {
    try {
      await auth.signOut();
      logoutCallback();
    } catch (e) {
      print(e);
    }
  }

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
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "COLOCO",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          onPressed: () {
                            signOut();
                          },
                        )
                      ],
                    ),
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
                            color: Colors.red,
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
                            color: Colors.red,
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
