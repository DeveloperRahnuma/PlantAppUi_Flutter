import 'package:flutter/material.dart';

import '../../../CommonComponent/CardWithData.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CardWithData(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DetailsScreen(),
              //   ),
              // );
            },
          ),
          CardWithData(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DetailsScreen(),
              //   ),
              // );
            },
          ),
          CardWithData(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}
