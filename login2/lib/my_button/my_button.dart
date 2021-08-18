import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  MyButton({this.image, this.text, this.btnColor, this.radius, this.onPressed});

  final image;
  final text;
  final btnColor;
  final radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: image,
            ),
          ],
        ),
        color: btnColor,
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
