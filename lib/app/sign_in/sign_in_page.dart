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
            "Sutisna",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFA273E0),
              fontSize: 28,
            ),
          ),
          Text(
            "Total Investasi",
            style: TextStyle(
              color: Color(0xFFDADADA),
            ),
          ),
          SizedBox(height: 8.0),
          Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF0C55ED),
                        Color(0xFFEFAFD5),
                      ]),
                  borderRadius: BorderRadius.all((Radius.circular(20)))),
              child: Align(
                alignment: Alignment(0, 0),
                child: Text("asd"),
              )),
          // SizedBox(
          //   // width: 100.0,
          //   height: 30,
          //   child: Text(
          //     "testing",
          //     style: TextStyle(fontSize: 14, backgroundColor: Colors.amber),
          //     textAlign: TextAlign.right,
          //   ),
          // ),
          // Container(
          //   color: Colors.green,
          //   child: SizedBox(
          //     height: 100,
          //   ),
          // ),
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
