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
      padding: EdgeInsets.only(left: 16, right: 16, top: 55),
      color: Color(0xFF252934),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 132,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0C55ED),
                    Color(0xFFEFAFD5),
                  ]),
              borderRadius: BorderRadius.all(
                (Radius.circular(20)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
