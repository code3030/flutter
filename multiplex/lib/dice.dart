import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('image/dice1.png')
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

