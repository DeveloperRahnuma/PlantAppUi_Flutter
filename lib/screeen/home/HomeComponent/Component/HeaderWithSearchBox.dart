import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_flutter_app_ui/Resource/CustomColors.dart';

import 'ToolBar.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        width: screenSize.width,
        height: screenSize.height * 0.3,
        child: Stack(children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.3 - 27,
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Column(
              children: [
                HomeToolbar(),
                Row(
                  children: <Widget>[
                    Text(
                      'Hi Uishopy!',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/logo.png",
                      width: 50,
                      height: 50,
                    )
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ]));
  }
}
