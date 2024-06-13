import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_and_registration/login.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));

}

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 30),
          Text('Sign up',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          Text('Create your account', style: TextStyle(fontSize: 15.0, color: const Color.fromARGB(255, 136, 135, 135))),
          SizedBox(
            height: 30,
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
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 198, 237, 242),
                prefixIcon: Icon(Icons.email),
               border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)
                ),
                hintText: "Email",
                contentPadding: EdgeInsets.all(18),
              ),
              style: TextStyle(fontSize: 18, color: Colors.black),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: 15,
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
          SizedBox(
            height: 15,
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
                hintText: "Confirm Password",
                contentPadding: EdgeInsets.all(18),
                
              ),
              
              style: TextStyle(fontSize: 18, color: Colors.black),
              obscureText: true,
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(width: 300,
          child: ElevatedButton(onPressed: (){}, child: Text('Sign up'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 18, 110, 186),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 18),
            padding: EdgeInsets.all(25),


          ),
          ),
          ),
          SizedBox(height: 20),
          Text('or', style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 136, 135, 135)),),

          SizedBox(height: 20,),
          SizedBox(width: 300,
          child: ElevatedButton(onPressed: (){}, child: Text('Sign up with Google'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Color.fromARGB(255, 18, 110, 186),
            textStyle: TextStyle(fontSize: 18),
            padding: EdgeInsets.all(25),
            

          ),
          ),
          ),
          SizedBox(height: 20,),
          Text('Already have an Account? ', style: TextStyle(color: const Color.fromARGB(255, 136, 135, 135), fontSize: 15)),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
          }, child: Text('Login', style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 18, 110, 186)),))
          
        ],
      )),
    );
  }
}
