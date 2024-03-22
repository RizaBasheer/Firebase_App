import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Create an account,its free'),
                SizedBox(
                  height: 60,
                ),
                Container(child: Text('Username',textAlign: TextAlign.left,),alignment: Alignment.bottomLeft,),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(child: Text('Email',textAlign: TextAlign.left,),alignment: Alignment.centerLeft,),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(child: Text('Password',textAlign: TextAlign.left,),alignment: Alignment.centerLeft,),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(child: Text('Confirm Password'),alignment: Alignment.centerLeft,),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      elevation: 30,
                      fixedSize: Size(150, 30),
                      backgroundColor: Colors.blue),
          
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Row(
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.indigo,),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
