import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_flutter_app_ui/Resource/CustomColors.dart';
import 'package:plant_flutter_app_ui/screeen/details/detail_component/icon_card.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  IconButton(
                    padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  Spacer(),

                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/icon_2.svg"),
                  IconCard(icon: "assets/icons/icon_3.svg"),
                  IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            ),
          ),

          Container(
            width: size.width * 0.75,
            height: size.height * 0.8,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(63),
                topLeft: Radius.circular(63)
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withOpacity(0.29)
                )
              ],
              image: const DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
