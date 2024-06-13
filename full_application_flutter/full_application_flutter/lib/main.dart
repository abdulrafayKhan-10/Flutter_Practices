import 'package:flutter/material.dart';

main() {
  runApp(const home());
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          title: Center(
            child: Text("Home Screen"),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: const Color.fromARGB(255, 175, 175, 175),
              ),
              SizedBox(height: 25),
              Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      color: const Color.fromARGB(255, 165, 180, 180),
                    ),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    Container(
                      height: 140,
                      width: 140,
                      color: const Color.fromARGB(255, 165, 180, 180),
                    ),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    Container(
                      height: 140,
                      width: 140,
                      color: const Color.fromARGB(255, 165, 180, 180),
                    ),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    Container(
                      height: 140,
                      width: 150,
                      color: const Color.fromARGB(255, 165, 180, 180),
                    ),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Special Offer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: const Color.fromARGB(255, 175, 175, 175),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Popular Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          color: const Color.fromARGB(255, 175, 175, 175),
                        ),
                        SizedBox(
                          height: 8,
                          width: 8,
                        ),
                        Container(
                          height: 80,
                          width: 100,
                          color: const Color.fromARGB(255, 175, 175, 175),
                        ),
                        SizedBox(
                          height: 8,
                          width: 8,
                        ),
                        Container(
                          height: 80,
                          width: 100,
                          color: const Color.fromARGB(255, 175, 175, 175),
                        ),
                      ],
                    ),  
                    SizedBox(height: 20,width: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          color: const Color.fromARGB(255, 175, 175, 175),
                        ),
                        SizedBox(
                          height: 8,
                          width: 8,
                        ),
                        Container(
                          height: 80,
                          width: 100,
                          color: const Color.fromARGB(255, 175, 175, 175),
                        ),
                        SizedBox(
                          height: 8,
                          width: 8,
                        ),
                        Container(
                          height: 80,
                          width: 100,
                          color: const Color.fromARGB(255, 175, 175, 175),
                        ),
                      ],
                    ),
                    SizedBox(
                            height: 20,
                            width: 20,
                        )
                  ],
              ),
                ),  
            ],
          ),
        ),
      ),
    );
  }
}
