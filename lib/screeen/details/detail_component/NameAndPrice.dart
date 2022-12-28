import 'package:flutter/material.dart';
import 'package:plant_flutter_app_ui/Resource/CustomColors.dart';

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({Key? key , required this.tittle, required this.price, required this.country}) : super(key: key);

  final String tittle, price, country;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(text: tittle, style: Theme.of(context).textTheme.headline4?.copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
                          ]
                      )
                  ),

                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(text: country, style: const TextStyle(
                                fontSize: 22,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600
                            ))
                          ]
                      )
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(price, style: Theme.of(context).textTheme.headline4?.copyWith(color: kPrimaryColor)),
              )
            ],
          ),
        );
  }
}
