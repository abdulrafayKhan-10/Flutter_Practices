import 'package:first_small_task_cr/Product.dart';
import 'package:first_small_task_cr/aboutus.dart';
import 'package:first_small_task_cr/cart.dart';
import 'package:first_small_task_cr/services.dart';
import 'package:first_small_task_cr/reviews.dart';
import 'package:first_small_task_cr/trackorder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const navigation());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: const Color.fromARGB(255, 69, 62, 42),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          ),
          body: Container(
              color: Color.fromARGB(255, 135, 104, 96),
              child: Center(
                child: Column(
                children: [ 
                  SizedBox(height: 30),
                 ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/product');
                  },
                  child: const Text('Go to Product'),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/aboutus');
                  },
                  child: const Text('Go to Aboutus'),
                ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/services');
                  },
                  child: const Text('Go to Services'),
                ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: const Text('    Go to Cart    '),
                ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/trackorder');
                  },
                  child: const Text('  to Trackorder  '),
                ),
                ],
              )
              ),
    ),
      ),
    );
  }
}

class navigation extends StatelessWidget {
  const navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => home(),
        '/product': (context) => product(),
        '/aboutus': (context) => aboutus(),
        '/cart': (context) => cart(),
        '/reviews': (context) => reviews(),
        '/trackorder': (context) => trackorder(),
        '/services': (context) => services(),
      },
    );
  }
}
