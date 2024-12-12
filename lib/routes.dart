import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';

// Java Map ( Hash Map Key:Value )
final Map<String, WidgetBuilder> routes = {

  "/home": (context) => const Home(),
  "/about": (context) => const About(),

};