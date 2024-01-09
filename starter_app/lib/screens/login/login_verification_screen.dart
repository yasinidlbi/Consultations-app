
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../mystyle/constantsColors.dart';

class LoginVerificationScreen extends StatefulWidget {
  const LoginVerificationScreen({Key? key}) : super(key: key);

  @override
  State<LoginVerificationScreen> createState() => _LoginVerificationScreenState();
}

class _LoginVerificationScreenState extends State<LoginVerificationScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: myprimercolor,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: mysecondarycolor, //change your color here
          ),
          backgroundColor: myprimercolor,
        title: Text("Active Application"),
          elevation: 0,
        ),
    body: Container(
      // height: bodyHeight * 0.60,
      // width: screenWidth,
      // decoration: BoxDecoration(
      //   borderRadius:
      //   BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      //   color: myprimercolor,
      //   // border: Border.all(color: Colors.grey)
      // ),
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          border: Border.all(color: Colors.grey),
          color: Colors.white,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
              'assets/svg/shield-lock-line-icon.svg',
              color: Colors.red,
              semanticsLabel: 'Label'
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                      width: 45,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "0",
                        fillColor: Colors.grey.shade100,
                      ),
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 45,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin2) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "0",
                        fillColor: Colors.grey.shade100,
                      ),
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 45,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin3) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "0",
                        fillColor: Colors.grey.shade100,
                      ),
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 45,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin4) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "0",
                        fillColor: Colors.grey.shade100,
                      ),
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 45,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin5) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "0",
                        fillColor: Colors.grey.shade100,
                      ),
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 45,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin6) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "0",
                        fillColor: Colors.grey.shade100,
                      ),
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    );
    }
}
