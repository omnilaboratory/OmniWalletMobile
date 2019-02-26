import 'package:flutter/material.dart';

import 'start.dart';
import 'welcome_page_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LunarX_Omni Wallet',
      // home: StartPage(),
      home: WelcomePageOne(),
    );
  }
}