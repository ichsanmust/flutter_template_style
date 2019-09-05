import 'package:flutter/material.dart';
import 'package:division/division.dart';

class MainCss {
  static header(screen) {
    return StyleClass()
      ..padding(top: screen.setHeight(50))
      ..background.color(Colors.deepOrange)
      ..width(screen.screenWidth)
    ;
  }

  static headerText(screen) {
    return TextStyle(
      fontSize: screen.setSp(50),
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static notififationIcon(screen) {
    return StyleClass()..margin(right: screen.setWidth(60) );
  }

  static bodyOne(screen) {
    return StyleClass()
      ..background.color(Colors.deepOrange)
      ..width(screen.screenWidth);
  }

  static bodyTwo(screen) {
    return StyleClass()
      ..background.color(Colors.white)
      ..borderRadius(topLeft: screen.setWidth(100), topRight: screen.setWidth(100))
      ..width(screen.screenWidth);
  }

  static body(screen) {
    return StyleClass()..margin(left: screen.setWidth(100), right: screen.setWidth(100), top: screen.setHeight(40));
  }

  static label(screen) {
    return StyleClass()..alignment.topLeft();
  }

  static labelText(screen) {
    return TextStyle(
      fontSize: screen.setSp(40),
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static textField(screen) {
    return StyleClass()
      ..margin(top: screen.setHeight(30))
      ..height(screen.setHeight(100))
      ..borderRadius(all: 30);
  }

  static textFieldStyle(screen) {
    return TextStyle(
      color: Colors.black,
      fontSize: screen.setSp(33),
    );
  }

  static textFieldStyleOutline(screen) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
            bottomLeft: Radius.circular(18.0),
            bottomRight: Radius.circular(18.0)),
        borderSide: const BorderSide(color: Colors.grey)
    );
  }

  static buttonPrimary(screen) {
    return StyleClass()
      ..height(screen.setHeight(100))
      ..margin(top: screen.setHeight(35), bottom: screen.setHeight(35))
    //..padding(horizontal: 10, vertical: 10)
    //..background.hex('87e083')
      ..background.color(Colors.blue)
      ..borderRadius(all: 20)
      ..alignment.center()
    //..elevation(10, color: hex('87e083'))
      ..elevation(5, color: Colors.blue);
  }

  static buttonPrimaryText(screen) {
    return TextStyle(
      color: Colors.white,
      fontSize: screen.setSp(35),
    );
  }



// ---- DUMMY --- //


  static classMain(screen) {
    return StyleClass()..width(screen.screenWidth);
  }

  static classOne(screen) {
    return StyleClass()
      ..minHeight(100)
      ..background.color(Colors.blue)
    //..alignmentChild.center()
        ;
  }

  static classTwo(screen) {
    return StyleClass()
      ..minHeight(100)
      ..background.color(Colors.red)
    //..alignmentChild.center()
        ;
  }

  static classThree(screen) {
    return StyleClass()
      ..minHeight(100)
      ..background.color(Colors.green)
    //..alignmentChild.center()
        ;
  }

  static styleOne(screen) {
    return StyleClass()
      ..height(35)
      ..margin(top: 10, bottom: 10)
      ..padding(horizontal: 10, vertical: 10)
      ..background.color(Colors.blue)
      ..borderRadius(all: 10)
      ..alignment.center();
  }

  static styleTwo(screen) {
    return StyleClass()
      ..background.color(Colors.red)
      ..elevation(5, color: Colors.red);
  }

// ---- DUMMY --- //


}
