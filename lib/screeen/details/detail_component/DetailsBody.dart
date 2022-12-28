import 'package:flutter/material.dart';
import 'package:plant_flutter_app_ui/screeen/details/detail_component/ImageAndIcon.dart';

import 'BottomTwoButton.dart';
import 'NameAndPrice.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageAndIcon(),
        NameAndPrice(tittle: "Rahnuma", country: "India", price: "400",),
        BottomTwoButton()
      ],
    );
  }
}
