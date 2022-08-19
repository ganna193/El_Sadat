import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/1.dart';


import 'User_Model1.dart';

main()
{
  runApp( myapp());
}

class myapp extends StatelessWidget {
  const  myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  String url = 'https://fakestoreapi.com/products';
  List<dynamic> store = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<List<dynamic>> getData() async {
    Response response = await dio.get(url);
    print(response.data);
    print(response.statusCode);
    store = response.data.map((item) => Store.fromJson(item)).toList();
    return store;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black,
       title: Text('My Store' ),
       centerTitle: true,
     ),
      body: SafeArea(
     child: FutureBuilder(
    future: getData(),
    builder: (context, snapshot) {
      return snapshot.hasData ? ListView.builder(
          itemCount: store.length,
          itemBuilder: (context, index) {
            return
              Container(
             color: Colors.white60,
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Image.network("${store[index].image}"),
                  subtitle: Container(
                    alignment: Alignment.topCenter,
                    child:  TextButton(
                        child: Text('price=${store[index].price}',
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        onPressed: () {},
                    ),
                  ),
                ),

            );
          },
    )
          : snapshot.hasError
          ? Text('Sorry, Someting wrong')
          : Center(child: CupertinoActivityIndicator());
    }),


    )



    );
  }
}
