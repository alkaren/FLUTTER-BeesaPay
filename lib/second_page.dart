import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
