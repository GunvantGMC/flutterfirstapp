import 'package:flutter/material.dart';

class RulesPage extends StatefulWidget {
  @override
  _RulesPageState createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch and Win"),
      ),
      body: Center(
        child: Text("App Features"),
	child: Text("• App based on networking with new and improved UI"),
	child: Text("• User Friendly"),
	child: Text("• use for fun"),
      ),
    );
  }
}
