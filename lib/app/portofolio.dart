import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
            padding: EdgeInsets.only(left: 16, right: 16, top: 55),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Portofolfio!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA273E0),
                        fontSize: 28,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Alokasi Dana",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Row(
                        children: <Widget>[],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
