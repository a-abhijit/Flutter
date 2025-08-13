import 'package:flutter/material.dart';

import 'myWidget.dart';

class Ownwidget extends StatelessWidget {
  const Ownwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 250,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),

            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  CItyCard(img: 'asset/img.png', rating: '2 star',),
                  CItyCard(img: 'asset/img_1.png', rating: '3 star',),
                  CItyCard(img: 'asset/img_2.png', rating: '4 star',),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

