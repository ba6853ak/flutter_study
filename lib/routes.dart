import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';
import 'def/Def.dart';
import 'def/RowColumn.dart';
import 'def/star.dart';
import 'def/bottom_navigation_bar.dart';
import 'def/BoxCon.dart';
import 'def/Con2.dart';
import 'def2/Counter.dart';
import 'def2/ParentChild.dart';
import 'def2/FormW.dart';
// Java Map ( Hash Map Key:Value )
final Map<String, WidgetBuilder> routes = {
  "/home": (context) => Home(),
  "/about": (context) => About(),
  "/def": (context) => Def(),
  "/rowColumn": (context) => RowColumn(),
  "/star": (context) => Star(),
  "/bottomNavigationBar": (context) => BottomNavigation(),
  "/boxCon": (context) => BoxCon(),
  "/con2": (context) => Con2(),
  "/counter": (context) => Counter(),
  "/parentChild": (context) => ParentChild(),
  "/formW": (context) => FormW(),
};