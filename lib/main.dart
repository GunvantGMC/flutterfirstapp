import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  String enteredText = "";

  void _decreamentCounter() {
    setState(() {
      _counter--;
    });
  }

  void _divideCounter(){
    setState(() {
      _counter = _counter ~/ 2;
    });
  }

  //Toast Example
  void _toastText(){
    Fluttertoast.showToast(
        msg: enteredText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      
      body: Center(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.only(left: 150, right: 150, top: 20, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter any text',
                  ),
                   onChanged: (newText){
                    enteredText = newText;
                  },
              ),  
                 
                ),

            Container(
              margin: EdgeInsets.only(left: 150, right: 150, top: 30, bottom: 0),
              child: RaisedButton(
              onPressed: _toastText,
              child: Text('Click Here', style: TextStyle(fontSize: 20, fontFamily: 'Times new roman')),
              color: Colors.green,
              padding: EdgeInsets.all(15),
            ),
            ),
            
            Padding(
            padding: EdgeInsets.only(left: 150, right: 150, top: 70, bottom: 0),
            child: Text(
                'The button will do the dividation and subtraction',
                style: TextStyle(fontFamily: 'Times new roman' , fontSize: 30),
            ),
              ),


              Padding(
              padding: EdgeInsets.only(left: 150, right: 150, top: 70, bottom: 0),
              child: Text(
              '$_counter',
              style: TextStyle(fontFamily: 'Times new roman', fontSize: 30),
              ),
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
            onPressed: _divideCounter,
            tooltip: 'Divide',
            child: const Icon(Icons.percent),
          ),
          
        ],
      ),
    
    );
  }
}
