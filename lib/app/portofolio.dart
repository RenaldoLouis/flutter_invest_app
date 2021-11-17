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
                  "PORTOFOLIO!",
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
            margin: EdgeInsets.symmetric(vertical: 35, horizontal: 85),
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0C55ED),
                    Color(0xFFEFAFD5),
                  ]),
              borderRadius: BorderRadius.all(
                (Radius.circular(100)),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 7.0),
                      width: 69,
                      height: 69,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Color(0XFFDCF9F7),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Reksadana",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 7.0),
                      width: 69,
                      height: 69,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Color(0xFFCA5D93),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Saham",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 7.0),
                      width: 69,
                      height: 69,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Color(0xFFFB9747),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Obligasi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 7.0),
                      width: 69,
                      height: 69,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Color(0xFF59C5BB),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Asuransi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Pembelian",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Lihat Semua",
                      style: TextStyle(color: Color(0XFFC4C4C4), fontSize: 12),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0XFFC4C4C4),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
