import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

// 컬럼 연습
class CulumStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(

              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(

              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(

              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        ),

      ),
    );
  }
}


// builder 이용하여 Snack bar 만들기
class SnackStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: FlatButton(
            child: Text('Show me',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            color: Colors.red,
            onPressed: () {
              Scaffold.of(ctx).showSnackBar(SnackBar(
                content: Text('Hello'),
              ));
            },
          ),
        );
      },)
    );
  }
}

// builder 없이 Snack bar 만들기 (커스텀 MySnackBar())
class BuilderNonStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: (){
          Scaffold.of(context)
              .showSnackBar(SnackBar(
                content: Text('Hellow',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
                ),
                );
        }),
    );
  }
}

// Toast message
// fluttertoast lib 사용 => pubspec.yaml fluttertoast: ^3.1.3 추가
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
            onPressed: (){
              flutterToast();
            },
            child: Text('Toast'),
            color: Colors.blue
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(msg: 'Flutter',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT
  );
}