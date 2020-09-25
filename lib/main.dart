import 'package:flutter/material.dart';
import 'package:flutter_riset/pages/home.dart';
import 'package:flutter_riset/pages/loading.dart';
import 'package:flutter_riset/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => Location(),
      },
    ));
