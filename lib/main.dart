import 'package:flutter/material.dart';

import 'package:division/division.dart';
import 'package:style_app/css/main_css.dart';
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
    return Scaffold(
        //appBar: AppBar(),
        body: Column(
      children: <Widget>[


        // header
        Expanded(
          flex:1,
          child: Division(
            style: MainCss.header(context),
            child: Division(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(IcoFontIcons.arrowLeft, color: Colors.white),
                      onPressed: () {
                        print('back');
                      },
                    ),
                    Text(
                      'Leave Request',
                      style: MainCss.headerText(context),
                    )
                  ],
                ),
                Division(
                  style: MainCss.notififationIcon(context),
                  gesture: GestureClass()
                    ..onTap(() {
                      print('Notif');
                    }),
                  child: Icon(
                    IcoFontIcons.notification,
                    color: Colors.white,
                    size: 18,
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
              style: MainCss.bodyOne(context),
              child: Division(
                style: MainCss.bodyTwo(context),
                child: SingleChildScrollView(
                  child: Division(
                    style: MainCss.body(context),
                    child: Column(
                      children: <Widget>[

                        // label
                        Division(
                          style: MainCss.label(context),
                          child: Text(
                            'Leave Request',
                            style: MainCss.labelText(context),
                          ),
                        ),

                        // textfield
                        Division(
                          style: MainCss.textField(context),
                          child: TextFormField(
                            style: MainCss.textFieldStyle(context),
                            decoration: InputDecoration(
                              //hintText: "Start Date",
                              labelText: 'Start Date',
                              prefixIcon: Icon(IcoFontIcons.uiCalendar,
                                  color: Colors.black, size: 18),
                              fillColor: Colors.white,
                              labelStyle: MainCss.textFieldStyle(context),
                              enabledBorder: MainCss.textFieldStyleOutline(context),
                              focusedBorder: MainCss.textFieldStyleOutline(context),
                              border: MainCss.textFieldStyleOutline(context),
                            ),
                          ),
                        ),

                        // submit
                        Division(
                          style: MainCss.buttonPrimary(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(IcoFontIcons.save, color: Colors.white, size: 20),
                              Division(
                                  style: StyleClass()..margin(left: 5),
                                  child: Text(
                                    'Save As Draft',
                                    //maxLines: ,
                                    //overflow: TextOverflow.ellipsis,
                                    style: MainCss.buttonPrimaryText(context),
                                  ))
                            ],
                          ),
                          gesture: GestureClass()
                            ..onTap(() {
                              print('draft');
                            }),
                        ),


                        Division(
                          style :
                                StyleClass()
                                  ..add(MainCss.styleOne(context))
                                  ..add(MainCss.styleTwo(context), override: true)
                              ,
                          //MainCss.styleOne(context),
                          child : Text('sd') ,
                        ),




// ---- DUMMY --- //




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
//                                ..add(MainCss.notififationIcon(context), override: true)
//                             ,
//                            child:Text('testing')
//                          ),
//
//
//                      Division(
//                        style: MainCss.buttonPrimary(context),
//                      child : Row(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Icon(IcoFontIcons.save, color: Colors.white, size: 20),
//                          Division(
//                              style: StyleClass()..margin(left: 5),
//                              child: Text(
//                                'Save As Draft',
//                                //maxLines: ,
//                                //overflow: TextOverflow.ellipsis,
//                                style: MainCss.buttonPrimaryText(context),
//                              ))
//                        ],
//                      ),
//                      gesture: GestureClass()
//                        ..onTap(() {
//                          print('draft');
//                        }),
//                      ),
//
                    Division(
                        style: MainCss.classMain(context),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Division(
                                style: MainCss.classOne(context),
                                child:Text('testing')
                              ),
                            ),
                            Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              child: Division(
                                style: MainCss.classTwo(context),
                                  child:Text('test')
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight, // sama dengan expanded
                              child: Division(
                                style: MainCss.classThree(context),
                                  child:
                                      Text('ssss', style: MainCss.labelText(context)),
                              ),
                            ),
                          ],
                        )),


                        Division(
                            style: MainCss.classMain(context),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classOne(context),
                                      child:Text('testing')
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classTwo(context),
                                      child:Text('test')
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight, // sama dengan expanded
                                  child: Division(
                                    style: MainCss.classThree(context),
                                    child:
                                    Text('ssss', style: MainCss.labelText(context)),
                                  ),
                                ),
                              ],
                            )),

                        Division(
                            style: MainCss.classMain(context),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classOne(context),
                                      child:Text('testing')
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classTwo(context),
                                      child:Text('test')
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight, // sama dengan expanded
                                  child: Division(
                                    style: MainCss.classThree(context),
                                    child:
                                    Text('ssss', style: MainCss.labelText(context)),
                                  ),
                                ),
                              ],
                            )),

                        Division(
                            style: MainCss.classMain(context),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classOne(context),
                                      child:Text('testing')
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classTwo(context),
                                      child:Text('test')
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight, // sama dengan expanded
                                  child: Division(
                                    style: MainCss.classThree(context),
                                    child:
                                    Text('ssss', style: MainCss.labelText(context)),
                                  ),
                                ),
                              ],
                            )),

                        Division(
                            style: MainCss.classMain(context),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classOne(context),
                                      child:Text('testing')
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Division(
                                      style: MainCss.classTwo(context),
                                      child:Text('test')
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight, // sama dengan expanded
                                  child: Division(
                                    style: MainCss.classThree(context),
                                    child:
                                    Text('ssss', style: MainCss.labelText(context)),
                                  ),
                                ),
                              ],
                            )),

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
