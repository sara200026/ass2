import 'package:assform/RegisterScreen.dart';
import 'package:assform/login.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Now Lets Add Slider class
    final _slider = SizedBox(
      height: 520.0,
      child: new Carousel(
        images: [
          Image.asset('assets/images/pp.jpg'),
          Image.asset('assets/images/pp.jpg'),
          Image.asset('assets/images/pp.jpg'),
        ],
        dotSize: 10.0,
        dotSpacing: 15.0,
        dotColor: Colors.white,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.black.withOpacity(0.1),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Slider"),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text(
                  'Buy your favourites',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 200,
                    child: Column(
                      children: [
                        Text('personalization of your',
                            style: TextStyle(fontSize: 13)),
                        Text('shopping brands', style: TextStyle(fontSize: 13)),
                      ],
                    )),
                SizedBox(
                  height: 50,
                ),
                _slider,
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Start Shopping',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return RegisterScreen();
                                },
                              ));
                            },
                            child: Text('sing up  or',
                                style: TextStyle(fontSize: 15))),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return login();
                                },
                              ));
                            },
                            child:
                                Text('log in?', style: TextStyle(fontSize: 15)))
                      ],
                    )),
              ],
            )),
      ),
    );
  }
}
