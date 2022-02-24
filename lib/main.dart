import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 200,
          color: Colors.purpleAccent,
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.end,
            verticalDirection: VerticalDirection.up,
            spacing: 10,
            runSpacing: 40,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              MyButton(
                text: "Button 1",
              ),
              MyButton(
                text: "Button 2",
              ),
              MyButton(
                text: "Button 3",
              ),
              MyButton(
                text: "Button 4",
              ),
              MyButton(
                text: "Button 5",
              ),
              MyButton(
                text: "Button 6",
              ),
              MyButton(
                text: "Button 7",
              ),
              MyButton(
                text: "Button 8",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget MyButton({required text}) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ));
  }
}
