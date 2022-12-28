import 'package:flutter/material.dart';
import 'package:plant_flutter_app_ui/Resource/CustomColors.dart';

class BottomTwoButton extends StatelessWidget {
  const BottomTwoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
        child: Row(
          children: [
            Container(
              width: size.width * 0.5,
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60)
                ),
                color: kPrimaryColor
              ),
              child: Center(child: Text("Buy Now", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 , color: Colors.white),)),
            ),


            Container(
              width: size.width * 0.5,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      topRight: Radius.circular(60)
                  ),
              ),
              child: Center(child: Text("Discription", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),)),
            ),
          ],
        )
    );
  }
}
