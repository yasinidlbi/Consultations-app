import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';


class RecordScreen extends StatefulWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  final recorder = FlutterSoundRecorder();
  bool isRecorderReady = false;

  Future record() async {
    if(!isRecorderReady) return;
    await recorder.startRecorder(toFile: 'audio');
  }
  Future stop() async {
    if(!isRecorderReady) return;

    final path = await recorder.stopRecorder();
    final audioFile = File(path!);
    
    print('Record audio: $audioFile');
  }

  @override
  void initState() {
    // audioPlayer = AudioPlayer();
    // audioRecord = Record();
    // TODO: implement initState
    super.initState();

    initRecorder();
  }
  Future initRecorder () async{
    final status  = await Permission.microphone.request();

    if(status != PermissionStatus.granted) {
      throw 'Microphone permission not granted';
    }

    await recorder.openRecorder();

    isRecorderReady = true;
    recorder.setSubscriptionDuration(
      const Duration(milliseconds: 500),
    );
  }


  @override
  void dispose() {
    recorder.closeRecorder();
    // audioPlayer.dispose();
    // audioRecord.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text("Record Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<RecordingDisposition>(
              stream: recorder.onProgress,
                builder: (context, snapshot) {
                final duration = snapshot.hasData
                    ?snapshot.data!.duration
                    :Duration.zero;
                
                String twoDigits (int n) => n.toString().padLeft(2, '0');
                final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
                final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

                return Text(
                  '$twoDigitMinutes:$twoDigitSeconds'
                  , style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0
                ),);

                },
            ),
            ElevatedButton(
              child: Icon(
                recorder.isRecording?Icons.stop : Icons.mic,
                size: 80,
              ),
              onPressed: () async {
                if(recorder.isRecording){
                  await stop();
                } else {
                  await record();
                }
                setState(() {

                });
              },
            )
          ],
        )


      ),
    );
  }
}
