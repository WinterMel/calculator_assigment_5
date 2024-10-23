import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';  // Import the package

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the sum section
  int sum = 0;
  int subtract = 0;
  int multiply = 0;
  int divide = 0;

  // either use a TextEditingController for each input field to get the value
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();
  TextEditingController sub1Controller = TextEditingController();
  TextEditingController sub2Controller = TextEditingController();
  TextEditingController multiply1Controller = TextEditingController();
  TextEditingController multiply2Controller = TextEditingController();
  TextEditingController divide1Controller = TextEditingController();
  TextEditingController divide2Controller = TextEditingController();

  // or store each value in the state
  int firstNum = 0;
  int secondNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Add Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      firstNum = int.parse(value);
                    });
                  },
                ),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      secondNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text(' = $sum'),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  sum = firstNum + secondNum;
                  setState(() {});
                },
              ),
              ElevatedButton(
                child: Text("Clear"),
                onPressed: () {
                  setState(() {
                    sum = 0;
                    firstNum = 0;
                    secondNum = 0;
                  });
                    add1Controller.clear();
                    add2Controller.clear();
                },
              ),
            ],
          ),
//----------------------------------------------------------------minus
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: sub1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      firstNum = int.parse(value);
                    });
                  },
                ),
              ),
              const Text(" - "),
              Expanded(
                child: TextField(
                  controller: sub2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      secondNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text(' = $subtract'),

              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  subtract = firstNum - secondNum;
                  setState(() {});
                },
              ),

              ElevatedButton(
                child: Text("Clear"),
                onPressed: () {
                  setState(() {
                    subtract = 0;
                    firstNum = 0;
                    secondNum = 0;
                  });
                    sub1Controller.clear();
                    sub2Controller.clear();
                },
              ),
            ],
          ),
//----------------------------------------------------------------multiply
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: multiply1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      firstNum = int.parse(value);
                    });
                  },
                ),
              ),
              const Text(" * "),
              Expanded(
                child: TextField(
                  controller: multiply2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      secondNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text(' = $multiply'),

              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  multiply = firstNum * secondNum;
                  setState(() {});
                },
              ),

              ElevatedButton(
                child: Text("Clear"),
                onPressed: () {
                  setState(() {
                    multiply = 0;
                    firstNum = 0;
                    secondNum = 0;
                  });
                    multiply1Controller.clear();
                    multiply2Controller.clear();
                },
              ),
            ],
          ),
//----------------------------------------------------------------division
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: divide1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  onChanged: (value) {
                    setState(() {
                      firstNum = int.parse(value);
                    });
                  },
                ),
              ),
              const Text(" / "),
              Expanded(
                child: TextField(
                  controller: divide2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      secondNum = int.parse(value);
                    });
                  },
                ),
              ),
              Text(' = $divide'),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.divide),
                onPressed: () {
                  divide = firstNum ~/ secondNum;
                  setState(() {});
                },
              ),

              ElevatedButton(
                child: Text("Clear"),
                onPressed: () {
                  setState(() {
                    divide = 0;
                    firstNum = 0;
                    secondNum = 0;
                  });
                    divide1Controller.clear();
                    divide2Controller.clear();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}