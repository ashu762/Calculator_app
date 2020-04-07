import 'package:calculator_app/layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var great = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            TextField(
              readOnly: true,
              showCursor: true,
              style: TextStyle(fontSize: 40, color: Colors.white),
              controller: great,
              cursorColor: Colors.orange,
            ),
            Container(
              child: Layout(great),
              height: 400,
              width: double.infinity,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
