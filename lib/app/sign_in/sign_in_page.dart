import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SignInPage extends StatelessWidget {
  final List<String> imageList = [
    "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
    "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
    "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
  ];

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25.0),
            child: Column(
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
                Align(
                  alignment: Alignment(-1, -1),
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
                      margin:
                          EdgeInsets.only(top: 20.0, left: 15.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Align(
                            child: Text(
                              "Total Investasi",
                              style: TextStyle(
                                  color: Colors.white70,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ),
                          Align(
                            child: Text(
                              "Transaksi >",
                              style: TextStyle(
                                  color: Colors.white70,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            ),
                          ),
                        ],
                      )),
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
                    margin: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          child: Text(
                            "Total Keuntungan",
                            style: TextStyle(
                                color: Colors.white70,
                                // fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        Align(
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
                    child: Row(
                      children: <Widget>[
                        Align(
                          child: Text(
                            "RP 3.375.000",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w800,
                                fontSize: 14.0),
                          ),
                        ),
                        SizedBox(width: 68.5),
                        Align(
                          child: Text(
                            "5,2%",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w800,
                                fontSize: 14.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "Menabung Untuk",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0),
          ),
          Container(
            // color: Colors.red,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,
                              width: 1050,
                              height: 350,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                  .toList(),
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
