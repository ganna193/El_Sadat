import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondscreen extends StatelessWidget {
  const secondscreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text('My Store' ),
      centerTitle: true,
    ),
      body: SafeArea(
        child:  ListTile(
        title:Text("${store[index].description}"),
    subtitle:Text("${store[index].category}") ,
      ),
      ),
    );
  }
}
