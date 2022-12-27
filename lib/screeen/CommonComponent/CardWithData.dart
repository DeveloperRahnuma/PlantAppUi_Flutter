import 'package:flutter/material.dart';
import 'package:plant_flutter_app_ui/Resource/CustomColors.dart';

class CardWithData extends StatelessWidget {
  const CardWithData({
    Key? key,
    required this.title,
    required this.image,
    required this.country,
    required this.price,
    required this.press
  }) : super(key: key);

  final String title, image, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Column(
          children: [
          Image.asset(image),

      GestureDetector(
        onTap: press(),
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ]
          ),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                      text: "$country".toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: kPrimaryColor),
              )
            ],
          ),
        ),
      )
        ],
      ),
    );
  }
}
