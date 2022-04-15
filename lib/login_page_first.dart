import 'package:flutter/material.dart';
import 'package:flutter_application_helloworld/main_page.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(
                // color: Colors.amber,
                child: Container(
                    width: 280,
                    height: 205,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/illustration.png')),
              ),
            ),
            Flexible(
              flex: 0,
              child: Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, right: 0, top: 20),
                // padding: EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  "Welcome to Beesa!",
                  style: TextStyle(fontSize: 25, fontFamily: 'Poppins', color: Color(0xff07080B), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              flex: 0,
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 30),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Pay bills, phone credit and transfer from your phone.",
                  style: TextStyle(fontSize: 18, fontFamily: 'Poppins', color: Color(0xff373C44)),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                // height: 40,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xff1C5D99), borderRadius: BorderRadius.circular(4)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => MainPage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 20),
                // height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff3267E3), width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(4)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => MainPage()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xff1C5D99), fontSize: 14, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
