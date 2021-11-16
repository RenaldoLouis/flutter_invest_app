import 'package:flutter/material.dart';

class favoritePage extends StatefulWidget {
  // favoritePage({Key? key}) : super(key: key);

  @override
  _favoritePageState createState() => _favoritePageState();
}

class _favoritePageState extends State<favoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _favoritePageContent(),
    );
  }

  Container _favoritePageContent() {
    return Container(
      color: Color(0xFF252934),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Favorite Page",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC4C4C4),
                          fontSize: 14,
                        ),
                      ),
                      Align(
                        child: Text(
                          "Sutisna!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA273E0),
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
