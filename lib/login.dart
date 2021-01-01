import 'package:assform/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  int phone = 123123;
  int password = 123456;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(),
              ),
              Container(
                child: Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                margin: EdgeInsets.only(top: 40),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your data',
                  style: TextStyle(fontSize: 15),
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),

                //  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  onChanged: (value) {
                    if (value != phone) {
                      print('enter correct phone');
                    }
                  },
                  // controller: controller,
                  decoration: InputDecoration(
                      labelText: 'Phone',
                      filled: true,
                      // fillColor: Color(0xfff7892b), // filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),

                //  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  onChanged: (value) {
                    if (value != password) {
                      print('enter correct password');
                    }
                  },
                  // controller: controller,
                  decoration: InputDecoration(
                      // fillColor: Colors.grey,
                      labelText: 'Password',
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text('Forgot password?'),
                padding: EdgeInsets.only(left: 20, right: 20),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 50,
                width: 380,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Log in',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Profile();
                        },
                      ));
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have account?'),
                  Text('      '),
                  Text('Sign Up')
                ],
              )
            ],
          ),
        )));
  }
}
