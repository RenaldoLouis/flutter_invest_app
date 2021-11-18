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
  final items = List<ListItem>.generate(
    1000,
    (i) => i % 6 == 0
        ? HeadingItem('Heading $i')
        : MessageItem('Sender $i', 'Message body $i'),
  );
//  final List<ListItem> items;

//   MyApp({Key key, @required this.items}) : super(key: key);

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
            padding: EdgeInsets.only(
                top: 10.0, bottom: 35.0, left: 10.0, right: 10.0),
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
          ),
          Container(
            // child: ListView.builder(
            //   // Let the ListView know how many items it needs to build.
            //   itemCount: items.length,
            //   // Provide a builder function. This is where the magic happens.
            //   // Convert each item into a widget based on the type of item it is.
            //   itemBuilder: (context, index) {
            //     final item = items[index];

            //     return ListTile(
            //       // title: item.buildTitle(context),
            //       // subtitle: item.buildSubtitle(context),
            //       title: item.buildTitle(context),
            //       subtitle: item.buildSubtitle(context),
            //     );
            //   },
            // ),
            // decoration: BoxDecoration(
            //     border: Border.all(width: 1, color: Colors.white)),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 200.0,
                  child: new ListView(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        title: Text(
                          "Reksadana Tetap",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        subtitle: Text(
                          "Sucorinvest Bond Fund",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        trailing: Text(
                          "Rp 500.000",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xFFC4C4C4),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        title: Text(
                          "Reksadana Tetap",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        subtitle: Text(
                          "Sucorinvest Bond Fund",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        trailing: Text(
                          "Rp 500.000",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xFFC4C4C4),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        title: Text(
                          "Reksadana Tetap",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        subtitle: Text(
                          "Sucorinvest Bond Fund",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        trailing: Text(
                          "Rp 500.000",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xFFC4C4C4),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        title: Text(
                          "Reksadana Tetap",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        subtitle: Text(
                          "Sucorinvest Bond Fund",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                        trailing: Text(
                          "Rp 500.000",
                          style: TextStyle(
                            color: Color(0xFF82DFD7),
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xFFC4C4C4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
