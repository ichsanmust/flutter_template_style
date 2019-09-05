import 'package:flutter/material.dart';
import 'package:division/division.dart';

class MainCss {
  static header(context) {
    return StyleClass()
      ..padding(top: 15)
      ..background.color(Colors.deepOrange)
      ..width(MediaQuery.of(context).size.width);
  }

  static headerText(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static notififationIcon(context) {
    return StyleClass()..margin(right: 20);
  }

  static bodyOne(context) {
    return StyleClass()
      ..background.color(Colors.deepOrange)
      ..width(MediaQuery.of(context).size.width);
  }

  static bodyTwo(context) {
    return StyleClass()
      ..background.color(Colors.white)
      ..borderRadius(topLeft: 30, topRight: 30)
      ..width(MediaQuery.of(context).size.width);
  }

  static body(context) {
    return StyleClass()..margin(left: 30, right: 30, top: 10);
  }

  static label(context) {
    return StyleClass()..alignment.topLeft();
  }

  static labelText(BuildContext context) {
    return TextStyle(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static textField(context) {
    return StyleClass()
      ..margin(top: 10)
      ..height(35)
      ..borderRadius(all: 30);
  }

  static textFieldStyle(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: 14,
    );
  }

  static textFieldStyleOutline(BuildContext context) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
            bottomLeft: Radius.circular(18.0),
            bottomRight: Radius.circular(18.0)),
        borderSide: const BorderSide(color: Colors.grey)
    );
  }

  static buttonPrimary(context) {
    return StyleClass()
      ..height(35)
      ..margin(top: 10, bottom: 10)
      //..padding(horizontal: 10, vertical: 10)
      //..background.hex('87e083')
      ..background.color(Colors.blue)
      ..borderRadius(all: 20)
      ..alignment.center()
      //..elevation(10, color: hex('87e083'))
      ..elevation(5, color: Colors.blue);
  }

  static buttonPrimaryText(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: 14,
    );
  }

  static classMain(context) {
    return StyleClass()..width(MediaQuery.of(context).size.width);
  }

  static classOne(context) {
    return StyleClass()
          ..minHeight(100)
          ..background.color(Colors.blue)
        //..alignmentChild.center()
        ;
  }

  static classTwo(context) {
    return StyleClass()
          ..minHeight(100)
          ..background.color(Colors.red)
        //..alignmentChild.center()
        ;
  }

  static classThree(context) {
    return StyleClass()
          ..minHeight(100)
          ..background.color(Colors.green)
        //..alignmentChild.center()
        ;
  }

  static styleOne(context) {
    return StyleClass()
      ..height(35)
      ..margin(top: 10, bottom: 10)
      ..padding(horizontal: 10, vertical: 10)
      ..background.color(Colors.blue)
      ..borderRadius(all: 10)
      ..alignment.center();
  }

  static styleTwo(context) {
    return StyleClass()
      ..background.color(Colors.red)
      ..elevation(5, color: Colors.red);
  }
}
