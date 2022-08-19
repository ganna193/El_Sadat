import 'package:flutter/material.dart';

import 'login_screen.dart';
//import 'login_screen2.dart';
void main()
{
  runApp(myapp());
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginscreen(),
    );
  }
}