

import 'package:flutter/material.dart';

import '../../mystyle/constantsColors.dart';
import 'profile_form.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = (MediaQuery.of(context).size.height //screen
        -
        MediaQuery.of(context).padding.top // safe area
        -
        AppBar().preferredSize.height //AppBar
    );

    return Scaffold(
      resizeToAvoidBottomInset:  false,

      // appBar: AppBar(
      //   title: Text("Player Audio Screen"),
      // ),
      body: Stack(
        children: [
          Container(
                height: bodyHeight * 0.20,
                width: screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    // border: Border.all(color: Colors.grey),
                    gradient: LinearGradient(
                      colors: [Color(0xff023056), myprimercolor],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    )),
                child: SafeArea(
                child:  Stack(
                        children: [
                          // Top
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 15,
                            ),
                            child: ElevatedButton(
                              child: Icon(
                                Icons.shopping_cart,
                                color: myprimercolor,
                                size: 35,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(5),
                                backgroundColor: Colors.white, // <-- Button color
                                // foregroundColor: Colors.red, // <-- Splash color
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                ),
              ),
          Stack(
            children: [

              Padding(
                padding:  EdgeInsets.only(top:  bodyHeight * 0.40,bottom: 0.01),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: ProfileForm()
                    )
              ),

              // image
              Padding(
                padding:  EdgeInsets.only(top:  bodyHeight * 0.05,),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: bodyHeight * 0.30,
                    height: bodyHeight * 0.30,
                    foregroundDecoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Image(
                            image:NetworkImage("https://picsum.photos/200/300?random=2"),
                            // image:isFromNetwork? NetworkImage(url): AssetImage('assets/images/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
