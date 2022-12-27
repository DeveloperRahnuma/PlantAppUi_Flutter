import 'package:flutter/material.dart';
import 'package:plant_flutter_app_ui/screeen/home/HomeComponent/Component/HeaderWithSearchBox.dart';

import '../../../CommonComponent/Title_With_More.dart';
import 'RecomendsPlants.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWithSearchBox(),
        TitleWithMore(title: "Recommended", press: () {}),
        RecomendsPlants()
      ],
    );
  }
}
