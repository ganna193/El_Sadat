import 'package:flutter/material.dart';
main ()
{
  runApp(myapp());
}
class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Firstscreen(),
    );
  }
}
class Firstscreen extends StatelessWidget {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(' FLUTTER DEMO HOME PAGE ',),
          backgroundColor: (color.orange)
          ,),
      body: Center(
        child: Text('STALK CAMP')
        ,)
      ,);
  }
}