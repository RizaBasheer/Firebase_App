import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text('Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              SizedBox(
                height: 10,
              ),
              Text('Login to your account'),
              SizedBox(
                height: 40,
              ),
              Container(child: Text('Email'),alignment: Alignment.centerLeft,),
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
              Container(child: Text('Password'),alignment: Alignment.centerLeft,),
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
              TextButton(onPressed: () {}, child: Text('Login'),
                style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    elevation: 30,
                    fixedSize: Size(150, 30),
                    backgroundColor: Colors.blue),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment:Alignment.center ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?',),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.indigo,),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset('image/background.png')
            ],
          ),
        ),
      ),
    );
  }
}
