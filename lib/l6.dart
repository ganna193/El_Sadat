import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/User_Model.dart';

import 'l7.1.dart';

void main()
{
  // top level widget
  runApp(myapp());
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fltteru(),
    );

  }
}
class fltteru extends StatefulWidget {
  const fltteru({Key? key}) : super(key: key);

  @override
  State<fltteru> createState() => _fltteruState();
}
//200/201/ 202
//500/server
//http errors //400 bad request
//401//unauthorized
//403//forbiden
//404//not found

//crud -> create read update delete (database)(dio function)->(post->create,update->put,read->get,delete->delete)
class _fltteruState extends State<fltteru> {
  Dio dio = Dio();
  String url = 'https:reqres.in/api/users'; //lik server
  userlist? userlistt;
  Future getdata() async{
    Response response = await dio.get(url);
    print('@@@@ ${response.data}');
    userlistt = userlist.fromJson(response.data);

  }
  @override
  void initState() {
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    getdata();
    return Scaffold(
      appBar: AppBar (
        title:Text('api'),
      ),
      body: Text('hello'),
    );
    //initstate -> function before build the screen 1:40
    //build
    //didchangedependencies
    //didupdatewidget
    //dispose -> at moment you go out
  }
}
