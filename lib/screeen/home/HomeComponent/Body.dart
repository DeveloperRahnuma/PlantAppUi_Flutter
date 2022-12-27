import 'package:flutter/material.dart';
import 'package:plant_flutter_app_ui/screeen/home/HomeComponent/HeaderWithSearchBox.dart';
import 'package:plant_flutter_app_ui/screeen/home/HomeComponent/ToolBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderWithSearchBox()
      ],
    );
  }
}
