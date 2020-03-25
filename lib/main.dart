import 'package:app_maqueta_v2/src/page/home_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home',
      routes: {
        'Home':(BuildContext context) => HomePage(),
      },
    );
  }
}