import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  // const profilePage({ Key? key }) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _profileContent(),
    );
  }
}

class _profileContent extends StatelessWidget {
  // const _profileContent({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Profile page");
  }
}
