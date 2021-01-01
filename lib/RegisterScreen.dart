import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import 'customtextfield.dart';

class RegisterScreen extends StatelessWidget {
  String companyname;
  String account;
  String instagram;
  String mobile;
  String city;
  String email;

  String password;

  String confirmpass;

  String country;
  String gender;

  bool isAccepted = false;

  GlobalKey<FormState> formk = GlobalKey();

  GlobalKey<ScaffoldState> scaffoldk = GlobalKey();
  List<String> genderr = ['female', 'male'];
  List<String> countries = ['palistine', 'Uk'];
  saveForm() {
    //h احفظ حالة اللفورم وبفعل كل الدوال تعت الفليديت اذا تم الفليديت
    bool validateResult = formk.currentState.validate();

    if (validateResult) {
      formk.currentState.save();
    } else {
      return;
    }
  }

  savecompanyname(String companyname) {
    this.companyname = companyname;
  }

  saveaccount(String account) {
    this.account = account;
  }

  saveinstagram(String instagram) {
    this.instagram = instagram;
  }

  savemoblie(String mobile) {
    this.mobile = mobile;
  }

  savecity(String city) {
    this.city = city;
  }

  saveEmail(String email) {
    this.email = email;
  }

  savePass(String pass) {
    this.password = pass;
  }

  saveconfirm(String confirm) {
    this.confirmpass = confirm;
  }

  validateNullValue(value) {
    if (value == null || value == "") {
      return 'required field';
    }
  }

  validateEmail(value) {
    if (value == null || value == "") {
      return 'required field';
    } else if (isEmail(value)) {
      return 'worng email syntax';
    }
  }

  validtePasswor(value) {
    if (value == null || value == "") {
      return 'required field';
    } else if (value.length < 6) {
      return 'weaked pass';
    } else if (this.confirmpass != this.password) {
      return 'password not match';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldk,
      appBar: AppBar(
        title: Text('register'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Form(
              key: formk,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(),
                  ),
                  Container(
                    child: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                  Customtextfield(
                    hintt: 'compony name',
                    saveFunction: savecompanyname,
                    validateFun: validateNullValue,
                  ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 5,
                  //   ),
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       border: Border.all(color: Colors.black)),
                  //   child: DropdownButton<String>(
                  //       hint: Text(gender),
                  //       isExpanded: true,
                  //       underline: Container(),
                  //       items: genderr
                  //           .map((e) => DropdownMenuItem(
                  //                 child: Text(e),
                  //                 value: e,
                  //               ))
                  //           .toList(),
                  //       onChanged: (value) {
                  //         this.gender = value;
                  //         setState(() {});
                  //       }),
                  // ),
                  Customtextfield(
                    hintt: 'account name',
                    saveFunction: saveaccount,
                    validateFun: validateNullValue,
                  ),
                  Customtextfield(
                    hintt: 'instagram',
                    saveFunction: saveinstagram,
                    validateFun: validateNullValue,
                  ),
                  Customtextfield(
                    hintt: 'Email',
                    saveFunction: saveEmail,
                    validateFun: validateEmail,
                  ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 5,
                  //   ),
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       border: Border.all(color: Colors.black)),
                  //   child: DropdownButton<String>(
                  //       hint: Text(country),
                  //       isExpanded: true,
                  //       underline: Container(),
                  //       items: countries
                  //           .map((e) => DropdownMenuItem(
                  //                 child: Text(e),
                  //                 value: e,
                  //               ))
                  //           .toList(),
                  //       onChanged: (value) {
                  //         this.country = value;
                  //         setState(() {});
                  //       }),
                  // ),
                  Customtextfield(
                    hintt: 'City',
                    saveFunction: savecity,
                    validateFun: validateNullValue,
                  ),
                  Customtextfield(
                    hintt: 'password',
                    saveFunction: savePass,
                    validateFun: validtePasswor,
                  ),
                  Customtextfield(
                    hintt: 'Confirm pass',
                    saveFunction: saveconfirm,
                    validateFun: validtePasswor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 380,
                    height: 55,
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        'sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        saveForm();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
