import 'package:animate_do/animate_do.dart';
// import 'package:example/pages/verification.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterWithPhoneNumber extends StatefulWidget {
  // const RegisterWithPhoneNumber({ Key? key }) : super(key: key);

  @override
  _RegisterWithPhoneNumberState createState() => _RegisterWithPhoneNumberState();
}

class _RegisterWithPhoneNumberState extends State<RegisterWithPhoneNumber> {
  final TextEditingController controller = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  child: Text(
                    'Create New Account',
                    style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 25, color: Colors.grey.shade900),
                  ),
                ),
                FadeInDown(
                  delay: Duration(milliseconds: 200),
                  child: Padding(
                    // padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Join us and transfer from your phone just one click!',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 17, color: Colors.grey.shade700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FadeInDown(
                  child: Text(
                    'Name',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 17, color: Colors.grey.shade900),
                  ),
                ),
                FadeInDown(
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.13)),
                      ),
                      hintText: 'Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FadeInDown(
                  child: Text(
                    'Email',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 17, color: Colors.grey.shade900),
                  ),
                ),
                FadeInDown(
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.13)),
                      ),
                      hintText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FadeInDown(
                  child: Text(
                    'Phone Number',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 17, color: Colors.grey.shade900),
                  ),
                ),
                FadeInDown(
                  delay: Duration(milliseconds: 400),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.green,
                      //     blurRadius: 10,
                      //     offset: Offset(0, 4),
                      //   ),
                      // ],
                    ),
                    child: Stack(
                      children: [
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: Colors.black),
                          textFieldController: controller,
                          formatInput: false,
                          maxLength: 9,
                          keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                          cursorColor: Colors.black,
                          inputDecoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                          ),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                        Positioned(
                          left: 90,
                          top: 8,
                          bottom: 8,
                          child: Container(
                            height: 40,
                            width: 1,
                            color: Colors.black.withOpacity(0.13),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                FadeInDown(
                  child: Container(
                    margin: const EdgeInsets.only(left: 0, right: 0, top: 35, bottom: 0),
                    // height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xff1C5D99), borderRadius: BorderRadius.circular(8)),
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (_) => MainPage()));
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
