import 'package:flutter/material.dart';

class MyAppBtn extends StatelessWidget {
  const MyAppBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyButton(),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                print('text button');
              },
              onLongPress: (){
                print('text long button');
              },
              child: Text(
                'Text button',
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  print('Elevated button');
                },
                child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0.0
              ),
            ),
            OutlineButton(
              onPressed: (){
                print('Outlined button');
              },
              child: Text('Outlined button'),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                // minimumSize: Size(200,50),
                onSurface: Colors.pink
              ),
            ),
            TextButton.icon(
                onPressed: (){
                  print('Icon button');
                },
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                  // color: Colors.black87,
                ),
                label: Text('Go to home'),
                  style: TextButton.styleFrom(
                  primary: Colors.purple
                ),
              ),
            // 가로방향으로 자동 정렬 (폭이 작을경우 세로 정렬)
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('TextButton'),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('ElevateButton'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


