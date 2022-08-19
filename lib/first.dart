import 'package:flutter/material.dart';
import 'package:untitled1/second.dart';

class first extends StatelessWidget {
  //class_name obj = class_name()
  GlobalKey<FormState> form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sample App',),


        //Center(child:Text('Sample App',)
      ),
      body:
        Form(
        key:form,
           child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35,),

      //ListView( children: [],),
      //SingleChildScrollView(child:
     child:
          Column(
           // crossAxisAlignment: CrossAxisAlignment.start,   to makeit start from left
             children:  [                               //list of widgets
               Text('Tutorial',
               style: TextStyle(color: Colors.blue, fontSize:30,fontWeight: FontWeight.bold,),
               ),
               Padding(padding: EdgeInsets.only(top: 25,bottom: 10),
               child:Text("Sign in",style:TextStyle(color: Colors.black, fontSize:20)
               )
               ),
               SizedBox(height: 30,),
               TextFormField(
                 decoration: InputDecoration(
                   prefixIcon :Icon(Icons.person, color: Colors.indigo,),
                   hintText: 'User Name',
                   border: OutlineInputBorder(),
                 ),
                 validator: (String? value){
                   if(value!.isEmpty)
                     {
                       return 'user name is required';
                     }
                   return null;
                 },
               ),
               SizedBox(height: 30,),
               TextFormField(
                 obscureText: true,
                 decoration: InputDecoration(
                   prefixIcon :Icon(Icons.lock, color: Colors.indigo,),
                   hintText: 'Password', //hintstyle:Textstyle()
                   border: OutlineInputBorder(),       //enabledborder //focusedborder
                 ),
                 validator: (String? value){
                   if(value!.length<6)
                   {
                     return 'minimum is 6 characters';
                   }
                   return null;
                 },
               ),
//alt+enter+choose widget
//Padding(padding: EdgeInsets.symmetric(vertical: 15,
             SizedBox(height:10,),
    Text('Foget Password',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,),),
               SizedBox(height:10,),
  SizedBox(
    width: double.infinity,
    child:ElevatedButton(

      style:ElevatedButton.styleFrom(shadowColor: Colors.green, primary: Colors.black87,),
    onPressed: (){
      if(form.currentState!.validate())
      {
        Navigator.push(context, MaterialPageRoute(
          builder: (context){return second();}              //go to the second screen when you click login
          ,),);
      }

    },
    child: Text('login'),
  ),
  ),
      Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [  Text('does not have account? '), TextButton(onPressed: (){},child:Text('sign in',style: TextStyle(fontSize: 18,)),),
        ],
          ),
],  ),
),
          ),);
  }
}

//ctrl f scearh