import 'package:first_small_task_cr/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Product(),
  debugShowCheckedModeBanner: false,
  ) );
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
              title: Text("Home"),
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),      
          ),
          body: Container(
                color: Color.fromARGB(255, 237, 227, 199), 
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
                        }, child: Text("Products"))

                      ],

                  ),

                )
     )
 );
  }
}
