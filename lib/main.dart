import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text("Xylophone",style: TextStyle(color: Colors.pink[400])),
      ),),
      body: const Xylophone(),
    ),
  ),
  );
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final audioPlayer = AudioCache();
  Expanded fun({required Color colormain,required Color colorpressed, required String num}){
    return Expanded(
      child: TextButton(style:

      ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
              {return colorpressed;}
              return colormain;
            }),), onPressed: (){ audioPlayer.play('note$num');
      },child: const Text(""),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {



    return SafeArea(child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

      fun(colormain: Colors.blue,colorpressed: Colors.blueAccent,num: '1.wav'),
        fun(colormain: Colors.limeAccent,colorpressed: Colors.lime,num: '2.wav'),
        fun(colormain: Colors.orangeAccent,colorpressed: Colors.orange,num: '3.wav'),
        fun(colormain: Colors.purpleAccent,colorpressed: Colors.purple,num: '4.wav'),
        fun(colormain: Colors.tealAccent,colorpressed: Colors.teal,num: '5.m4a'),
        fun(colormain: Colors.yellowAccent,colorpressed: Colors.yellow,num: '6.mp3'),
        fun(colormain: Colors.redAccent,colorpressed: Colors.red,num: '7.mp3'),

    ],
    ),
    );
  }
}

