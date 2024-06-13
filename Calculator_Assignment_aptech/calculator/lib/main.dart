// import 'package:flutter/material.dart';

// main(){
//   runApp(MaterialApp(
//     title: 'Flutter Calculator',
//     home: CalculatorApp(),
//     debugShowCheckedModeBanner: false
//   ));
// }

// class CalculatorApp extends StatefulWidget {
//   const CalculatorApp({super.key});

//   @override
//   State<CalculatorApp> createState() => _CalculatorAppState();
// }

// class _CalculatorAppState extends State<CalculatorApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Calculator",style: TextStyle(fontWeight: FontWeight.bold),),
//         backgroundColor: Color.fromARGB(255, 8, 3, 82),
//         foregroundColor: Colors.white,
//       ),
//       body: 
//       Center(
//         child: Container(
//         child: Text("Hello") ,
//       ),
//       ),     
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: CalculatorHome(),
    )
  );

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _calculate(String operator) {
    double num1 = double.tryParse(_controller1.text) ?? 0;
    double num2 = double.tryParse(_controller2.text) ?? 0;
    double result;

    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          result = double.nan;
        }
        break;
      default:
        result = 0;
    }

    setState(() {
      _result = result.isNaN ? 'Error' : result.toString();
    });
  }

  void _clear() {
    setState(() {
      _controller1.clear();
      _controller2.clear();
      _result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromARGB(255, 8, 3, 82),
        foregroundColor: Colors.white
        ),
      body: 
        Container(
          color: Color.fromARGB(255, 158, 178, 214),
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter first number'),
            ),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter second number'),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _calculate('+'),
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 8, 3, 82),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('-'),
                  child: Text('-'),
                    style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 8, 3, 82),
                  ),

                ),
                ElevatedButton(
                  onPressed: () => _calculate('*'),
                  child: Text('*'),
                    style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 8, 3, 82),
                  ),

                ),
                ElevatedButton(
                  onPressed: () => _calculate('/'),
                  child: Text('/'),
                    style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 8, 3, 82),
                  ),

                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Result: $_result',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            if(_result.isNotEmpty)
             ElevatedButton(
              onPressed: () => {_clear()},
              child: Text('Clear'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 8, 3, 82),),
             )
          ],
        ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }
}
