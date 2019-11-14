import 'package:flutter/material.dart';
import 'package:jadex/color/color_palette.dart';

class ButtonPrimary extends StatefulWidget {
  @override
  _ButtonPrimaryState createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 54,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(8.0)),
        child: Text(
          'Button Primary',
          style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
        ),
        textColor: Palette.white,
        color: Palette.warm_pink,
        onPressed: () {},
      ),
    );
  }
}
