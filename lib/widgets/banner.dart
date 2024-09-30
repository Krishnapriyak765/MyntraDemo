import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


var banner =  ImageSlideshow(
    initialPage: 0,
    
    isLoop: true,
    autoPlayInterval: 2000,
    height: 250,
    width: double.infinity,
    children: [
      Image.network('https://i.pinimg.com/originals/01/95/82/01958236733281d8467cdf63484bfbed.png',fit: BoxFit.cover,),
      Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/87495881231087.5cf900ed157f2.jpg',fit: BoxFit.cover,),
      Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/210b0681231087.5cf900ed15b72.jpg',fit: BoxFit.cover,),
      Image.network('https://cdn.myportfolio.com/e7a38f0258bffc559c2d42a7d2a9389f/f0fb61af-6e2b-4960-9e44-3cde5dedaf5b_rw_1920.jpg?h=7adb0e0e929a1ab9985d9cb8ce996fcc',fit: BoxFit.cover,),
    ]);
