import 'package:flutter/material.dart';

import 'package:division/division.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:style_app/css/main_css_old.dart';
import 'package:style_app/css/main_css.dart';
import 'package:style_app/css/screen.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        fontFamily: 'Montserrat',
//        textTheme: TextTheme(
//          body1: TextStyle(fontSize: 16.0, fontFamily: 'Hind'),
//        )
//      ),
      home: PageOne(),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ScreenUtil.instance = ScreenUtil(allowFontScaling: true)..init(context);



    // contoh pemanggilan properti darii screen
    print('Device width:${ScreenUtil.getInstance().screenWidth}'); //Device width
    print('Device height:${ScreenUtil.getInstance().screenHeight}'); //Device height
    print(
        'Device pixel density:${ScreenUtil.getInstance().pixelRatio}'); //Device pixel density
    print(
        'Bottom safe zone distance:${ScreenUtil.getInstance().bottomBarHeight}'); //Bottom safe zone distance，suitable for buttons with full screen
    print(
        'Status bar height:${ScreenUtil.getInstance().statusBarHeight}px'); //Status bar height , Notch will be higher Unit px
    print(
        'Ratio of actual width dp to design draft px:${ScreenUtil.getInstance().scaleWidth}');
    print(
        'Ratio of actual height dp to design draft px:${ScreenUtil.getInstance().scaleHeight}');
    print(
        'The ratio of font and width to the size of the design:${ScreenUtil.getInstance().scaleWidth * ScreenUtil.getInstance().pixelRatio}');
    print(
        'The ratio of  height width to the size of the design:${ScreenUtil.getInstance().scaleHeight * ScreenUtil.getInstance().pixelRatio}');
    // end contoh pemanggilan properti darii screen



    return Scaffold(
        //appBar: AppBar(),
        body: Column(
      children: <Widget>[


        // header
        Expanded(
          flex:1,
          child: Division(
            style: MainCss.header(ScreenUtil.getInstance()),
            child: Division(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(IcoFontIcons.arrowLeft, color: Colors.white, size: ScreenUtil.getInstance().setSp(70)),
                      onPressed: () {
                        print('back');
                      },
                    ),
                    Text(
                      'Leave Request',
                      style: MainCss.headerText(ScreenUtil.getInstance()),
                    )
                  ],
                ),
                Division(
                  style: MainCss.notififationIcon(ScreenUtil.getInstance()),
                  gesture: GestureClass()
                    ..onTap(() {
                      print('Notif');
                    }),
                  child: Icon(
                    IcoFontIcons.notification,
                    color: Colors.white,
                    size: ScreenUtil.getInstance().setSp(50),
                  ),
                ),
              ],
            )),
          ),
        ),
        // end header

        // body
        Expanded(
          flex:9,
          child: Container(
            transform: Matrix4.translationValues(0, -1, 0),
            child: Division(
              style: MainCss.bodyOne(ScreenUtil.getInstance()),
              child: Division(
                style: MainCss.bodyTwo(ScreenUtil.getInstance()),
                child: SingleChildScrollView(
                  child: Division(
                    style: MainCss.body(ScreenUtil.getInstance()),
                    child: Column(
                      children: <Widget>[

                        // label
                        Division(
                          style: MainCss.label(ScreenUtil.getInstance()),
                          child: Text(
                            'Leave Request',
                            style: MainCss.labelText(ScreenUtil.getInstance()),
                          ),
                        ),

                        // textfield
                        Division(
                          style: MainCss.textField(ScreenUtil.getInstance()),
                          child: TextFormField(
                            style: MainCss.textFieldStyle(ScreenUtil.getInstance()),
                            decoration: InputDecoration(
                              //hintText: "Start Date",
                              labelText: 'Start Date',
                              prefixIcon: Icon(IcoFontIcons.uiCalendar,
                                  color: Colors.black, size: ScreenUtil.getInstance().setSp(50)),
                              fillColor: Colors.white,
                              labelStyle: MainCss.textFieldStyle(ScreenUtil.getInstance()),
                              enabledBorder: MainCss.textFieldStyleOutline(ScreenUtil.getInstance()),
                              focusedBorder: MainCss.textFieldStyleOutline(ScreenUtil.getInstance()),
                              border: MainCss.textFieldStyleOutline(ScreenUtil.getInstance()),
                            ),
                          ),
                        ),

                        // submit
                        Division(
                          style: MainCss.buttonPrimary(ScreenUtil.getInstance()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(IcoFontIcons.save, color: Colors.white, size: ScreenUtil.getInstance().setSp(50)),
                              Division(
                                  style: StyleClass()..margin(left: ScreenUtil.getInstance().setWidth(10)),
                                  child: Text(
                                    'Save As Draft',
                                    //maxLines: ,
                                    //overflow: TextOverflow.ellipsis,
                                    style: MainCss.buttonPrimaryText(ScreenUtil.getInstance()),
                                  ))
                            ],
                          ),
                          gesture: GestureClass()
                            ..onTap(() {
                              print('draft');
                            }),
                        ),






// ---- DUMMY --- //

//                        Division(
//                          style :
//                                StyleClass()
//                                  ..add(MainCss.styleOne(ScreenUtil.getInstance()))
//                                  ..add(MainCss.styleTwo(ScreenUtil.getInstance()), override: true)
//                              ,
//                          //MainCss.styleOne(context),
//                          child : Text('sd') ,
//                        ),
//
//
//                         Division(
//                            //style: MainCss.classOne(context),
//                            style:
//                              StyleClass()
//                                ..margin(left: 5)
//                                ..background.color(Colors.red)
//                                ..height(200)
//                                ..width(200)
//                                ..alignment.topLeft()
//                                ..alignmentChild.bottomRight()
//                                ..padding(all:20)
//                                ..add(MainCss.notififationIcon(ScreenUtil.getInstance()), override: true)
//                             ,
//                            child:Text('testing')
//                          ),
//
//                    Division(
//                        style: MainCss.classMain(ScreenUtil.getInstance()),
//                        child: Row(
//                          children: <Widget>[
//                            Flexible(
//                              flex: 2,
//                              fit: FlexFit.tight,
//                              child: Division(
//                                style: MainCss.classOne(ScreenUtil.getInstance()),
//                                child:Text('testing')
//                              ),
//                            ),
//                            Flexible(
//                              flex: 4,
//                              fit: FlexFit.tight,
//                              child: Division(
//                                style: MainCss.classTwo(ScreenUtil.getInstance()),
//                                  child:Text('test')
//                              ),
//                            ),
//                            Flexible(
//                              flex: 1,
//                              fit: FlexFit.tight, // sama dengan expanded
//                              child: Division(
//                                style: MainCss.classThree(ScreenUtil.getInstance()),
//                                  child:
//                                      Text('ssss', style: MainCss.labelText(ScreenUtil.getInstance())),
//                              ),
//                            ),
//                          ],
//                        )),
//
//
//                        Division(
//                            style: MainCss.classMain(ScreenUtil.getInstance()),
//                            child: Row(
//                              children: <Widget>[
//                                Flexible(
//                                  flex: 2,
//                                  fit: FlexFit.tight,
//                                  child: Division(
//                                      style: MainCss.classOne(ScreenUtil.getInstance()),
//                                      child:Text('testing')
//                                  ),
//                                ),
//                                Flexible(
//                                  flex: 4,
//                                  fit: FlexFit.tight,
//                                  child: Division(
//                                      style: MainCss.classTwo(ScreenUtil.getInstance()),
//                                      child:Text('test')
//                                  ),
//                                ),
//                                Flexible(
//                                  flex: 1,
//                                  fit: FlexFit.tight, // sama dengan expanded
//                                  child: Division(
//                                    style: MainCss.classThree(ScreenUtil.getInstance()),
//                                    child:
//                                    Text('ssss', style: MainCss.labelText(ScreenUtil.getInstance())),
//                                  ),
//                                ),
//                              ],
//                            )),


// ---- DUMMY --- //










                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // end body


      ],
    ));
  }
}
