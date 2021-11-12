import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  // const SignInPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Align(
      //     alignment: Alignment(0, 0),
      //     child: Text(
      //       "Time Tracker",
      //     ),
      //   ),
      // ),
      body: _buildContent(),
    );
  }

  Container _buildContent() {
    return Container(
      color: Color(0xFF252934),
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Align(
            alignment: Alignment(-1, -1),
            child: Text(
              "Halo, ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFC4C4C4),
                fontSize: 14,
              ),
            ),
          ),
          Text(
            "Sutisna!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFA273E0),
              fontSize: 28,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            width: 100,
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
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 10.0),
                    child: Align(
                      alignment: Alignment(-1, 1),
                      child: Text(
                        "Total Investasi",
                        style: TextStyle(
                            color: Colors.white70,
                            // fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.0, left: 15.0, right: 10.0),
                    child: Align(
                      alignment: Alignment(-1, 1),
                      child: Text(
                        "RP 42.375.000",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    // width: 300,
                    margin: EdgeInsets.only(top: 10.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-1, 1),
                          child: Text(
                            "Total Keuntungan",
                            style: TextStyle(
                                color: Colors.white70,
                                // fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Align(
                          alignment: Alignment(1, 0),
                          child: Text(
                            "Persentase Keuntungan",
                            style: TextStyle(
                                color: Colors.white70,
                                // fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.0, left: 15.0, right: 10.0),
                    child: Align(
                      alignment: Alignment(-1, 1),
                      child: Text(
                        "RP 3.375.000",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            color: Colors.red,
            child: SizedBox(
              height: 300,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            color: Colors.purple,
            child: SizedBox(
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
