import 'package:flutter/material.dart';

import '../mystyle/constantsColors.dart';
import '../mystyle/text_style.dart';
import '../widgets/image_square.dart';
import './record/record_screen.dart';
import 'record/player_audio_screen.dart';
import 'record/record_and_play_screen.dart';
import 'sercice/service_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
               DrawerHeader(
                decoration: BoxDecoration(
                  color: myprimercolor,
                ),
                child: Row(
                  children: [
                    ImageSquare(url:'https://picsum.photos/200/300',height: 75,width: 75, ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Clint', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color:Colors.white
                        ),),
                        TextButton(onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Warning"),
                                  content: Text("Wrong user name or password"),
                                );
                              });
                        },
                            child:  Text('Profile', style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 22,
                                color:Colors.white
                            ),)
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                title:  Text('Home'),
                selected: _selectedIndex == 0,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(0);
                  // Then close the drawer
                  Navigator.pop(context);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  ServiceScreen(),
                    ),
                  );

                },
              ),
              ListTile(
                title:  Text('Record'),
                selected: _selectedIndex == 1,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(1);
                  // Then close the drawer
                  Navigator.pop(context);


                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  RecordScreen(),
                      ),
                  );

                },
              ),
              ListTile(
                title:  Text('Player Audio'),
                selected: _selectedIndex == 2,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(2);
                  // Then close the drawer
                  Navigator.pop(context);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  PlayerAudioScreen(),
                    ),
                  );

                },
              ),
              ListTile(
                title:  Text('Record And Play'),
                selected: _selectedIndex == 3,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(3);
                  // Then close the drawer
                  Navigator.pop(context);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  RecordAndPlayScreen(),
                    ),
                  );

                },
              ),
            ],
          ),
        ),
      body: Center(
        child: Text("Hello World!"),
      ),
    );
  }
}
