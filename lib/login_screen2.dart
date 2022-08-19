import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginscreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SafeArea(child: Text('Chat App',
          style: TextStyle
            (
            color: Colors.deepPurple,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'UserName',
                prefixIcon :Icon(Icons.person,color: Colors.deepPurple,),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 25,
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
              decoration: InputDecoration(
                labelText: 'password',
                prefixIcon :Icon(Icons.password,color: Colors.deepPurple,),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30,),
            MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.deepPurple,
              onPressed: (){},
              child: Text('Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),

            )

          ],
        ),
      ),
    );
  }
}
