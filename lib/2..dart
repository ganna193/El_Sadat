import 'package:flutter/material.dart';
//ctrl+alt+l to format the code
main() {
  runApp(myapp());
  // runApp(app) to run the app ,((the parent class ())
  // alt +enter
}

class myapp extends StatelessWidget // to make it visual
    {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Firstscreen(),
    );
    //cupertinoApp() = MaterialApp()
  }
}
//alt+enter
class Firstscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ctrl+q
      appBar: AppBar(
        title: Text(' First Screen ',)
        ,),
      body: Center(
        child:Text('hello people')
        ,)
      ,);

  }
}
//في الاول جرجرتك من خيبتك خدرتك
//  يالهوووووووي