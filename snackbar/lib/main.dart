import 'package:flutter/material.dart';
import 'package:untitled/ScreenA.dart';
import 'package:untitled/ScreenB.dart';
import 'package:untitled/ScreenC.dart';

void main() => runApp(MyApp());

// push, pop 기초
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigator',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: FirstPage(),
//     );
//   }
// }
//
// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context2) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Navigator'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Go to the Second page'),
//           onPressed: (){
//             Navigator.push(context2, MaterialPageRoute(
//                 builder: (_) => SecondPage()));
//           }),
//       ),
//     );
//   }
// }
//
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext ctx) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second page'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Go to the First page'),
//           onPressed: (){
//             Navigator.pop(ctx);
//           },
//         ),
//       ),
//
//     );
//   }
// }

// 멀티 페이지 이동
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
    },
    );
  }
}








