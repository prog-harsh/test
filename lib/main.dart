import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    void playSound(int noteNumber) {
      final audioPlayer = AudioCache();
      audioPlayer.play('note$noteNumber.wav');
    }
    Expanded showKey({Color color, int noteNumber}){
      return Expanded(
        // ignore: deprecated_member_use
        child: FlatButton(
          color: color,
          splashColor: Colors.pink[100],
          onPressed: (){
            playSound(noteNumber);
          },
          child: null,
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
       body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
            // ignore: deprecated_member_use
            showKey(color: Colors.white, noteNumber: 1),
             showKey(color: Colors.black, noteNumber: 2),
             showKey(color: Colors.white, noteNumber: 3),
             showKey(color: Colors.black, noteNumber: 4),
             showKey(color: Colors.white, noteNumber: 5),
             showKey(color: Colors.black, noteNumber: 6),
             showKey(color: Colors.white, noteNumber: 7),


           ]
         ),
       ),
      )
    );
  }
}
