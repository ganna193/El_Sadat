import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String? email;
  String? password;

  SecondScreen({
    required this.email,
    required this.password,
  });

  @override
  int ? count ;
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:
            Center (
              child: Text ("counter", style: TextStyle
                (
                fontSize: 30,
              ),),

          ),
        ));
    FloatingActionButton : FloatingActionButton ();
  }
  class NewClass{string_name ='';
  //Getter
  string get name{return_name;}
  //Setter
  // string get name{
  // return_name}
//}
