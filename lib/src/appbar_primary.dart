import 'package:flutter/material.dart';
import 'package:jadex/color/color_palette.dart';

class AppbarPrimary extends StatefulWidget with PreferredSizeWidget {
  final Function iconPressed;
  final Color iconColor;
  AppbarPrimary({Key key, @required this.iconPressed, this.iconColor})
      : super(key: key);

  @override
  _AppbarPrimaryState createState() => _AppbarPrimaryState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppbarPrimaryState extends State<AppbarPrimary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(iconSize: 24,
              color: widget.iconColor ?? Palette.warm_pink,
              padding: EdgeInsets.only(left: 15, top: 20),
              icon: const Icon(
                Icons.sort,
              ),
              onPressed: widget.iconPressed,
            );
          },
        ),
      ),
    );
  }
}
