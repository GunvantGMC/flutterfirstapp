import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class buttondemo_ extends StatefulWidget {
  const buttondemo_({Key? key}) : super(key: key);

  @override
  State<buttondemo_> createState() => _buttondemo_State();
}

class _buttondemo_State extends State<buttondemo_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button demo"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.home_max_rounded),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
