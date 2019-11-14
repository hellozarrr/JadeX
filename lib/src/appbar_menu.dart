import 'package:flutter/material.dart';
import 'package:jadex/color/color_palette.dart';

class AppbarMenu extends StatefulWidget with PreferredSizeWidget {
  @override
  _AppbarMenuState createState() => _AppbarMenuState();
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}

class _AppbarMenuState extends State<AppbarMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(padding: EdgeInsets.only(left: 20),
              icon: const Icon(
                Icons.menu,
                color: Palette.warm_pink,
              ),
              onPressed: () {},
            );
          },
        ),
      ),
    );
  }
}
