// import 'package:flutter/material.dart';

// class product extends StatefulWidget {
//   const product({super.key});

//   @override
//   State<product> createState() => _productState();
// }

// class _productState extends State<product>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold (
//       appBar: AppBar(
//         title: Text("Product"),
//        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//       foregroundColor: Color.fromARGB(255, 255, 255, 255),      
      
//       ),
      
//     body: Container(
//       color: Color.fromARGB(255, 237, 227, 199), 
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Product Page')
//           ],
//         ),
//       )
//     ),  
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<Map<String, dynamic>> products = [
    {"name": "Product 1", "image": "../assets/product1.jpg"},
    {"name": "Product 2", "image": "../assets/product1.jpg"},
    {"name": "Product 3", "image": "../assets/product3.jpg"},
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        color: Color.fromARGB(255, 237, 227, 199),
        child: CarouselSlider.builder(
          itemCount: products.length,
          options: CarouselOptions(
            height: 310,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      products[index]['image'],
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        products[index]['name'],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromARGB(255, 0, 0, 0),
                        
                      ),
                      onPressed: () {
                        // Implement add to cart functionality
                      },
                      child: Text('Add to Cart'),
                      
                    ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
