import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Customtextfield extends StatelessWidget {
  Function validateFun;
  Function saveFunction;
  String hintt;
  Customtextfield(
      {@required this.hintt,
      @required this.saveFunction,
      @required this.validateFun});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.all(
            new Radius.circular(30),
          )),
          width: 380,
          // height: 70,
          child: TextFormField(
            textAlign: TextAlign.start,
            validator: (newValue) => validateFun(newValue),
            onSaved: (newValue) => saveFunction(newValue),
            decoration: InputDecoration(
                filled: true,
                hintText: hintt,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ],
    );
  }
}
