import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  // const SignInPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment(0, 0),
          child: Text(
            "Time Tracker",
          ),
        ),
      ),
      body: buildContent(),
    );
  }

  Container buildContent() {
    return Container(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.orange,
            child: SizedBox(
              height: 100,
            ),
          ),
          Container(
            color: Colors.red,
            child: SizedBox(
              height: 100,
            ),
          ),
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
