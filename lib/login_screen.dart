import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen2.dart';

class loginscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Padding(
            padding: const EdgeInsets.all(20),
      child :Column(
        children:  [
          SafeArea(child:
          Text ('Chat App',
            style: TextStyle
              (
              color: Colors.deepPurple,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),),
          SizedBox(
            height: 30,
          ),
          TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon :Icon(Icons.email,color: Colors.deepPurple,),
            border: OutlineInputBorder(),
          ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon :Icon(Icons.password, color: Colors.deepPurple,),
              border: OutlineInputBorder(),
            ),
          ),

          TextButton(onPressed: (){},
              child: Text ('Forget Password?!',
                style: TextStyle(color: Colors.deepPurple,fontSize: 15,),
              ),),

          MaterialButton(
              height: 50,
              minWidth:250,
              color: Colors.deepPurple,
              onPressed: () {},
                child: Text('Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ),


          Row(
            children: [
               Text("don't have account?"),
              TextButton(
                child:  Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20,color: Colors.deepPurple,),
                ),
                onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) {
    return loginscreen2(); } ,),
    );
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),),
    );
  }
}

