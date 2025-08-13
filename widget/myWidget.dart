import 'package:flutter/material.dart';
class CItyCard extends StatelessWidget {

  final String img,rating;
  const CItyCard({
    super.key, required this.img, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(img),
        Positioned(
            bottom: 4,
            right: 10,
            child: Text(rating,style: TextStyle(
                color: Colors.white
            ),))
      ],
    );
  }
}