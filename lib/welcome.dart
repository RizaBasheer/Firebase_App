import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/sign_up.dart';

import 'login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text('Welcome',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Slash Futter provides extraordinary flutter tutorials.Do subscribe!'),
                SizedBox(height: 40,),
                Image.asset('image/welcome.png'),
                SizedBox(height: 40,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                }, child: Text('Login'),
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      elevation: 30,
                      fixedSize: Size(150, 30),
                      backgroundColor: Colors.blue),
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                }, child: Text('Sign Up'),style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    elevation: 30,
                    fixedSize: Size(150, 30),
                    backgroundColor: Colors.white),
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
