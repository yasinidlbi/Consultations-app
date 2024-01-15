
import 'package:flutter/material.dart';

import '../../mystyle/button_style.dart';
import '../../mystyle/constantsColors.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}
class _ProfileFormState extends State<ProfileForm> {

  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15 ),
      child: Form(
        key: _formKey,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 0),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 60, top: 15,right: 15,bottom: 15),
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "User Name",
                              fillColor: Colors.grey.shade50,
                            ),

                          )),

                      Container(
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.account_circle,
                                size: 30,
                                color: Colors.grey.shade400,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10 ),
                                child: VerticalDivider(
                                  // color: Colors.grey
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],),

                  Stack(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 0),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 60, top: 15,right: 15,bottom: 15),
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "Email",
                              fillColor: Colors.grey.shade50,
                            ),

                          )),
                      Container(
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.email,
                                size: 30,
                                color: Colors.grey.shade400,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10 ),
                                child: VerticalDivider(
                                  // color: Colors.grey
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],),
                ],
              ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    child: Container(
                      // width: double.infinity,
                      // width: 200,
                      child: TextButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Save',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          style: bs_flatFill(context),
                          // onPressed: () {},
                          onPressed: () async =>
                          {
                            if (_formKey.currentState!.validate())
                              {
                                setState(() {
                                  isLoading = true;
                                }),
                                // UserToken.login(userNameController.text,userPassController.text)
                                //     .then((response) => {
                                //   GlobalUserToken = response,
                                //   print(GlobalUserToken?.token),
                                // if(GlobalUserToken != null)
                                //   {
                                // if(isRemmber)
                                //   {
                                // SharedPreferences prefs = await SharedPreferences.getInstance();
                                // // Save an integer value to 'counter' key.
                                // await prefs.setInt('counter', 10);
                                //  },
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (_) => HomeScreen())),
                                //   }
                                // else
                                //   {
                                //     showDialog(
                                //         context: context,
                                //         builder: (BuildContext context) {
                                //           return AlertDialog(
                                //             title: Text("Warning"),
                                //             content: Text("Wrong user name or password"),
                                //           );
                                //         }),
                                //   },
                  
                  
                  
                                setState(() {
                                  isLoading = false;
                                }),
                  
                  
                                // }
                                // ),
                              },
                  
                  
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => HomeScreen())),
                  
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) =>  LoginVerificationScreen(),
                            //   ),
                            // ),
                          }
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,),
                  child: TextButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Text(
                          'X',
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                        ),
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(mysecondarycolor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(color: mysecondarycolor),
                              )
                          )
                      ),
                      // onPressed: () {},
                      onPressed: () async =>
                      {
                        if (_formKey.currentState!.validate())
                          {
                            setState(() {
                              isLoading = true;
                            }),
                            // UserToken.login(userNameController.text,userPassController.text)
                            //     .then((response) => {
                            //   GlobalUserToken = response,
                            //   print(GlobalUserToken?.token),
                            // if(GlobalUserToken != null)
                            //   {
                            // if(isRemmber)
                            //   {
                            // SharedPreferences prefs = await SharedPreferences.getInstance();
                            // // Save an integer value to 'counter' key.
                            // await prefs.setInt('counter', 10);
                            //  },
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => HomeScreen())),
                            //   }
                            // else
                            //   {
                            //     showDialog(
                            //         context: context,
                            //         builder: (BuildContext context) {
                            //           return AlertDialog(
                            //             title: Text("Warning"),
                            //             content: Text("Wrong user name or password"),
                            //           );
                            //         }),
                            //   },



                            setState(() {
                              isLoading = false;
                            }),


                            // }
                            // ),
                          },


                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => HomeScreen())),

                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) =>  LoginVerificationScreen(),
                        //   ),
                        // ),
                      }
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

