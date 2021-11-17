import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:testing_1/Components/Item1.dart';
import 'package:testing_1/Components/Item2.dart';
import 'package:testing_1/Components/Item3.dart';
import 'package:testing_1/Components/Item4.dart';
import 'package:testing_1/app/portofolio.dart';

class SigninPage extends StatefulWidget {
  // const SigninPage({ Key? key }) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  int _currentIndex = 0;
  final List<String> imageList = [
    "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
    "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
    "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
  ];

  List<Widget> _widgetOptions = <Widget>[
    Portofolio(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List cardList = [Item1(), Item2(), Item3(), Item4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

  Container _buildContent() {
    return Container(
      color: Color(0xFF252934),
      // padding: EdgeInsets.only(left: 16, right: 16, top: 35),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Halo,",
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
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFFDD36C),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
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
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(
                                top: 20.0, left: 15.0, right: 10.0),
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
                          margin: EdgeInsets.only(
                              top: 3.0, left: 15.0, right: 10.0),
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
                          padding: EdgeInsets.only(
                            top: 10.0,
                            left: 15.0,
                            right: 15.0,
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Total Keuntungan",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 14.0),
                                        ),
                                        Container(
                                          // margin: EdgeInsets.only(right: 95.0),
                                          child: Text(
                                            "RP 3.375.000",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 14.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Persentase Keuntungan",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 14.0),
                                        ),
                                        Text(
                                          "5,2%",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(
                        //     top: 10.0,
                        //     left: 15.0,
                        //     right: 15.0,
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: <Widget>[

                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.only(
                        //       top: 3.0, left: 15.0, right: 10.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     children: <Widget>[

                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Menabung Untuk",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            // color: Colors.red,
            // child: CarouselSlider(
            //   options: CarouselOptions(
            //     enlargeCenterPage: true,
            //     enableInfiniteScroll: true,
            //     autoPlay: true,
            //     viewportFraction: 0.8,
            //     // scrollPhysics: ClampingScrollPhysics(),
            //   ),
            //   items: imageList
            //       .map((e) => ClipRRect(
            //             borderRadius: BorderRadius.circular(8),
            //             child: Stack(
            //               fit: StackFit.expand,
            //               children: <Widget>[
            //                 Image.network(
            //                   e,
            //                   height: 350,
            //                   fit: BoxFit.cover,
            //                 )
            //               ],
            //             ),
            //           ))
            //       .toList(),
            // ),
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.45,
                height: 190.0,
                autoPlay: true,
                enableInfiniteScroll: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                // aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      // borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Color(0xFF252934),
                          child: card,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            padding: EdgeInsets.only(left: 15.0, top: 15.0),
            height: 76,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF0C55ED).withOpacity(0.7),
                  Color(0xFFE19381).withOpacity(0.7),
                  Color(0xFFCA5D93).withOpacity(0.7),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Belum Tahu Profil Investasimu?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: 165,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Pelajari Lebih Lanjut",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pilihan Produk",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
                          Radius.circular(10),
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
                          Radius.circular(10),
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
                          Radius.circular(10),
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
                          Radius.circular(10),
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
          )
        ],
      ),
    );
  }
}
