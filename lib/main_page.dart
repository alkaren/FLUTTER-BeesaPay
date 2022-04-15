import 'package:flutter/material.dart';
import 'package:flutter_application_helloworld/second_page.dart';

class MainPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        // title: Text("Main Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Go to second page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            }),
      ),
    );
  }
}
