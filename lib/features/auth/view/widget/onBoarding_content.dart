

import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
   OnBoardingContent({super.key,required this.text,required this.image});
  String? text,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(
          flex: 2,
        ),
        Text(
          'Fashion Store',
          style: TextStyle(
              fontSize: 35,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold),
        ),
        Text(text!),
        Spacer(),
        Image.asset(
          image!,
          height: 265,
          width: 235,
        )
      ],
    );
  }


}
