import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 20;
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";

  void _decreamentCounter() {
    setState(() {
      _counter--;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter = _counter * 2;
    });
  }

  void _divideCounter() {
    setState(() {
      _counter = _counter ~/ 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 100, right: 100, top: 30, bottom: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num1controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Number',
                  hintText: 'Enter First Number',
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num2controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Second Number',
                  hintText: 'Enter Second Number',
                ),
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 200, right: 50, top: 10, bottom: 20),
                  child: ElevatedButton(
                    child: Text("Addition"),
                    onPressed: () {
                      setState(() {
                        int sum = int.parse(num1controller.text) +
                            int.parse(num2controller.text);
                        result = sum.toString();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 150, right: 200, top: 10, bottom: 20),
                  child: Text(
                    'Result : $result',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 250, right: 200, top: 50, bottom: 20),
                  child: Text(
                    'The button will do the dividation and subtraction',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 450, right: 0, top: 0, bottom: 20),
                  child: Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _decreamentCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            tooltip: 'Multiplication',
            onPressed: _multiplyCounter,
            child: const Icon(Icons.close_rounded),
          ),
          FloatingActionButton(
            onPressed: _divideCounter,
            tooltip: 'Divide',
            child: const Icon(Icons.percent),
          )
        ],
      ),
    );
  }
}
