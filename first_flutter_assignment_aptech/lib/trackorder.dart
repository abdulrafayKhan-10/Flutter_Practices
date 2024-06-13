import 'package:flutter/material.dart';

class trackorder extends StatelessWidget {
  const trackorder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trackorder'),
          backgroundColor: const Color.fromARGB(255, 69, 62, 42),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Container(
          color: Color.fromARGB(255, 135, 104, 96),
          child: Center(
            child: Column(
              children: [
              SizedBox(height: 30),
                Text(
                  'Trackorder',
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/'),
                  },
                  child: const Text('Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
