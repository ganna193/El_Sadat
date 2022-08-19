import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/1.dart';

import 'User_Model1.dart';

main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const  myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Dio dio = Dio();
  String url = 'https://fakstoreapi.com/products';
  List<dynamic> store = [];
  @override
  void initState(){
    super.initState();
    getData();
  }
  Future<List<dynamic>> getData() async{
    Response response = await dio.get(url);
    print(response.data);
    print(response.statusCode);
    store = response.data.map((product)=>Store.fromJson(product)).toList();
    return store;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getData(),
          builder: ((context, snapshot){
            return snapshot.hasError ? const Center(
              child: Text('Error!'),
            )
                : snapshot.hasData ? _buildGridView()
                : const Center(
              child: CircularProgressIndicator(),
            );
          }),
        ),
      ),
    );
  }


}

