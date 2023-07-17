// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text("Dice"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void ChangeNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeNumber();
              },
              child: Image(
                image: AssetImage('Images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeNumber();
              },
              child: Image(
                image: AssetImage('Images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   const DicePage({Key? key}) : super(key: key);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     int  leftDiceNumber = 1;
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: ElevatedButton(
//               onPressed: () {
//                 if (kDebugMode) {
//                   print('left button');
//                 }
//               },
//               child: Image(
//                 image: AssetImage('Images/dice$leftDiceNumber.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ElevatedButton(
//               onPressed: () {
//                 if (kDebugMode) {
//                   print('Right button');
//                 }
//               },
//               child: const Image(
//                 image: AssetImage('Images/dice1.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
