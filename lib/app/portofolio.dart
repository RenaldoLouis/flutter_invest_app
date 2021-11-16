import 'package:flutter/material.dart';

class Portofolio extends StatefulWidget {
  // Portofolio({Key? key}) : super(key: key);

  @override
  _PortofolioState createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _portofolioContent(),
    );
  }
}

class _portofolioContent extends StatelessWidget {
  // const _portofolioContent({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF252934),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 35),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Portofolio Page",
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
