import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeToolbar extends StatelessWidget {
  const HomeToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
