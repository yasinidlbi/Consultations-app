import 'package:flutter/material.dart';
// import 'package:record/record.dart';
// import 'package:audioplayers/audioplayers.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  // late Record audioRecord;
  // late AudioPlayer audioPlayer;

    @override
  void initState() {
      // audioPlayer = AudioPlayer();
      // audioRecord = Record();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {

    // audioPlayer.dispose();
    // audioRecord.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service Screen"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            ],
          ),
      ),
    );
  }
}
