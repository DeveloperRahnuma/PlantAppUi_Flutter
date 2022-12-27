import 'package:flutter/material.dart';

class TitleWithMore extends StatelessWidget {
  const TitleWithMore({Key? key, required this.title, required this.press}) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: screenSize.width * 0.9,
      child: Center(
        child: Row(
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const Spacer(),
            ElevatedButton(onPressed: press(), child:const Text(
            "More", style: TextStyle(color: Colors.white),),)
          ],
        ),
      ),
    );
  }
}
