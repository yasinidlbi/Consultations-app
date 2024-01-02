import 'package:flutter/material.dart';
import '../mystyle/button_style.dart';
import '../mystyle/text_style.dart';
import '../widgets/image_logo.dart';
import './home_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = (MediaQuery.of(context).size.height //screen
        - MediaQuery.of(context).padding.top // safe area
        - AppBar().preferredSize.height //AppBar
    );

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Center(
                    child: ImageLogo(width: bodyHeight * 0.30 ,height: bodyHeight * 0.30 ),
                  ),
                  Text('Login Form', style: TextTitleMain(context),),
                ],
              ),
            ),
               Flexible(
                 child:SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                     child:LoginForm(),
                    ),
                 ),
              ),
        ],
      )
    );
  }
}


class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}
class _LoginFormState extends State<LoginForm> {

  final userNameController = TextEditingController();
  final userPassController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    userPassController.dispose();

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: userNameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15.0),
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "User Name",
                              fillColor: Colors.white),
                        )),
                    Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: userPassController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15.0),
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "Password",
                              fillColor: Colors.white),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: Container(
                        width: double.infinity,
                        child: TextButton(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: bs_flatFill(context),
                            // onPressed: () {},
                            onPressed: () =>
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


                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomeScreen())),


                            }
                        ),
                      ),
                    ),
                  ],
                ),
    );
  }
}

