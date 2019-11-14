import 'package:flutter/material.dart';
import 'package:jadex/color/color_palette.dart';

class ButtonPrimary extends StatefulWidget {
  final String btnText;
  final Color btnColor;
  final Function btnPress;

  ButtonPrimary({Key key, @required this.btnText, this.btnColor, this.btnPress}): super(key: key);

  @override
  _ButtonPrimaryState createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 54,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(8.0)),
        child: Text(
          widget.btnText,
          style: TextStyle(fontFamily: 'Nunito', fontSize: 16),
        ),
        textColor: Palette.white,
        color: widget.btnColor ?? Palette.warm_pink,
        onPressed: widget.btnPress,
      ),
    );
  }
}
