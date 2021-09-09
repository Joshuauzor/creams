import 'package:creams/ui/home.dart';
import 'package:creams/ui/login.dart';
import 'package:creams/ui/register.dart';
import 'package:creams/ui/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Register(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/register': (context) => Register(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
    );
  }
}
