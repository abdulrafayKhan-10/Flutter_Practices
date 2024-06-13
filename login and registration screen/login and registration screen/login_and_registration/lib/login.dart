import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_and_registration/main.dart';




class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 60),
          Text('Welcome Back',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          Text('Enter your credentials to login', style: TextStyle(fontSize: 15.0, color: const Color.fromARGB(255, 136, 135, 135))),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 198, 237, 242),
                prefixIcon: Icon(Icons.supervised_user_circle),
                border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)
                ),
                hintText: "Username",
                contentPadding: EdgeInsets.all(18),
              ),
              style: TextStyle(fontSize: 18, color: Colors.black),
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 198, 237, 242),
                prefixIcon: Icon(Icons.password_rounded),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)
                ),
                hintText: "Password",
                contentPadding: EdgeInsets.all(18),
              ),
              style: TextStyle(fontSize: 18, color: Colors.black),
              obscureText: true,
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(height: 60),
          SizedBox(width: 300,
          child: ElevatedButton(onPressed: (){}, child: Text('Sign in'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 18, 110, 186),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 18),
            padding: EdgeInsets.all(25),


          ),
          ),
          ),
          SizedBox(height: 40),
          Text('Forgot password ?', style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 18, 110, 186)),),

          
          SizedBox(height: 40),
          Text('Dont have an Account? ', style: TextStyle(color: const Color.fromARGB(255, 136, 135, 135), fontSize: 15)),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()));
          }, child: Text('Sign up', style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 18, 110, 186)),),)
          
        ],
      )),
    );
  }
}
