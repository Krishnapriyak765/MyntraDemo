import 'package:flutter/material.dart';

var slides = SingleChildScrollView(scrollDirection: Axis.horizontal,
  child: Row(
    children: [

      Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.milledcdn.com/2022-10-25/9mzzVetRZxwS2gZX/c@2x.jpg'))),

      ),
      Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.milledcdn.com/2022-10-20/aNeOQ554q-_3K149/c@2x.jpg'))),

      ),
      Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.milledcdn.com/2022-06-11/ZuHaKOSWEprkpZ43/c@2x.jpg'))),

      ),
      Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://www.passionateinmarketing.com/wp-content/uploads/2022/03/MFH...jpg'))),

      ),
      Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://mma.prnewswire.com/media/1759226/Myntra_for_Her.jpg?p=twitter'))),
      ),

    ],
  ),
);