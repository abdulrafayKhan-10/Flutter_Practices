import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyAcs-yVIZ13GX903Ewja7Nbf5dCo63l6QI',
        appId: '1:208486187464:android:dcd9fb9492884e208b40fd',
        messagingSenderId: '208486187464',
        projectId: 'flutterfirstapp-3abd2'
        )
    );
  runApp(
    MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('CRUD Operations'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center( child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Register_button(firstNameController.text, lastNameController.text, emailController.text,passwordController.text);
              },
              child: Text('Create'),
          
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Print_button();
              },
              child: Text('Print users'),
          
            ),
          ],
        ),
      ),
      ),
    );
  }
  void Register_button(String firstname,String lastname,String useremail, String userpassword) async{
      CollectionReference userRegistration_collection = FirebaseFirestore.instance.collection("UserRegistration");
      QuerySnapshot querySnapshot = await userRegistration_collection.get();
      int newId = querySnapshot.size + 1;

       return await userRegistration_collection.doc(newId.toString()).set({
        'username': firstname +''+ lastname,
        'useremail': useremail,
        'userpassword': userpassword
      })
      .then((value){
        print("User Added");
        firstNameController.clear();
        lastNameController.clear();
        emailController.clear();
        passwordController.clear();
        
      })
      // ignore: invalid_return_type_for_catch_error
      .catchError((e) => print("Failed to add user $e"));

  }
  void Print_button() async{
    CollectionReference userRegistration_collection = FirebaseFirestore.instance.collection("UserRegistration");
    QuerySnapshot querySnapshot = await userRegistration_collection.get();
    
    for(QueryDocumentSnapshot doc in querySnapshot.docs)
    {
      print(doc.data());
    }
  }

   @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}