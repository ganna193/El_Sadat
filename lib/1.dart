
import 'package:flutter/material.dart';

main()
{
 runApp(myapp());

}
class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu,),
          title: Text('My First App'),
          actions: [
            IconButton(onPressed: ()
              {
                print('hello');
              }, icon:
            Icon ( Icons.notifications,),)
            ,
            IconButton(onPressed: ()
              {
                print("go to google");
              }, icon:
            Icon(Icons.search,),),
            /*IconButton(onPressed: ()
              {
                print ('hello');
              }
            , icon: Text('hello'),),*/
          ],
          centerTitle: true,

        ),
        body: SafeArea(
          child: Text('hello world!'),
        ),
        ),
      );
  }

}