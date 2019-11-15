import 'package:flutter/material.dart';
import 'package:jadex/color/color_palette.dart';

class ButtonPrimary extends StatefulWidget {
  final String btnText;
  final double btnWidth, btnHeight;
  final Color btnColor;
  final Function btnPress;

  ButtonPrimary(
      {Key key,
      @required this.btnText,
      this.btnColor,
      this.btnPress,
      this.btnWidth,
      this.btnHeight})
      : super(key: key);

  @override
  _ButtonPrimaryState createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.btnWidth ?? 320,
      height: widget.btnHeight ?? 56,
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
