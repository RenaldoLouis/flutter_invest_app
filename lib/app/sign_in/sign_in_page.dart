import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List cardList = ["Item1(), Item2(), Item3(), Item4()"];

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
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.red,
        // fixedColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: "asd",
            //  backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }

  Container _buildContent() {
    return Container(
      color: Color(0xFF252934),
      padding: EdgeInsets.only(left: 16, right: 16, top: 35),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
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
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
            ],
          ),
          Row(children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
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
                        margin:
                            EdgeInsets.only(top: 3.0, left: 15.0, right: 10.0),
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
                        margin:
                            EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
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
                        margin:
                            EdgeInsets.only(top: 3.0, left: 15.0, right: 10.0),
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
            ),
          ]),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Menabung Untuk",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
          ),
          Container(
            // color: Colors.red,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
                viewportFraction: 0.8,
                // scrollPhysics: ClampingScrollPhysics(),
              ),
              items: imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,
                              height: 350,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
            // child: CarouselSlider(
            //   options: CarouselOptions(
            //     height: 200.0,
            //     autoPlay: true,
            //     autoPlayInterval: Duration(seconds: 3),
            //     autoPlayAnimationDuration: Duration(milliseconds: 800),
            //     autoPlayCurve: Curves.fastOutSlowIn,
            //     pauseAutoPlayOnTouch: true,
            //     aspectRatio: 2.0,
            //     onPageChanged: (index, reason) {
            //       setState(() {
            //         _currentIndex = index;
            //       });
            //     },
            //   ),
            //   items: cardList.map((card) {
            //     return Builder(builder: (BuildContext context) {
            //       return Container(
            //         height: MediaQuery.of(context).size.height * 0.30,
            //         width: MediaQuery.of(context).size.width,
            //         child: Card(
            //           color: Colors.blueAccent,
            //           child: card,
            //         ),
            //       );
            //     });
            //   }).toList(),
            // ),
          ),
          Container(
            width: 300,
            height: 150,
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
