import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.stretch,
                children:[
                  buattombol(Colors.red, "note1.wav"),
                  buattombol(Colors.orange, "note2.wav"),
                  buattombol(Colors.yellow, "note3.wav"),
                  buattombol(Colors.green, "note4.wav"),
                  buattombol(Colors.blue, "note5.wav"),
                  buattombol(Colors.indigo, "note6.wav"),
                  buattombol(Colors.purple, "note7.wav"),
                ],
              ),
            )
        ),
      ),
    );    
  }

  Expanded buattombol(var color, var filename) {
    return Expanded(
                  child:ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource(filename));
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ), 
                );
  }
}



