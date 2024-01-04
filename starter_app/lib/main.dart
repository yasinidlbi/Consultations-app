import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './screens/home_screen.dart';
import 'screens/player_audio_screen.dart';
import 'screens/record_screen.dart';
import 'screens/record_and_play_screen.dart';
import 'screens/service_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        //   // When navigating to the "/" route, build the FirstScreen widget.
        '/splashScreen': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/service': (context) => const ServiceScreen(),
        '/record': (context) => const RecordScreen(),
        '/playerAudio': (context) => const PlayerAudioScreen(),
        '/recordAndPlay': (context) => const RecordAndPlayScreen(),
        //   // When navigating to the "/second" route, build the SecondScreen widget.
        //   '/order/profile': (context) => const ProfileScreen(),
      },
      // home:  LoginScreen(),
      home:  SplashScreen(),
    );
  }
}

