import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:myntra/widgets/banner.dart';
import 'package:myntra/widgets/slides.dart';

class Studio extends StatefulWidget {
  const Studio({Key? key}) : super(key: key);

  @override
  State<Studio> createState() => _StudioState();
}

class _StudioState extends State<Studio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Studio',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_border_rounded),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBrelHJw1OpyBtSMcyE6diHOtPTVcyq4qz5g&usqp=CAU'),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('SALES IS LIVE'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/17094668/2022/3/9/6eb90226-5c1e-45da-b142-a6485869e92c1646816755910-Anouk-Men-Kurtas-921646816755564-1.jpg'),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('INDIAN WEAR'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrXxJMFMb5qR3S4CPXTjr5jOq3BffCVxpx8HejShHdK_1KDt5EFtqlEMAsZsm8bN64De8&usqp=CAU'),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('GROOMING'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage('https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/19446024/2022/9/26/97d327f9-99ef-46c4-ab18-87cc2149d3521664173614659-U-S-Polo-Assn-Men-Light-Blue-Embroidered-Tailored-Fit-Pure-C-1.jpg'), fit: BoxFit.cover),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('BRANDS'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage('https://img.paisawapas.com/ovz3vew9pw/2022/06/27113211/myntra1-ALL-DEAL-2.jpg'), fit: BoxFit.cover),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('CASUAL WEAR'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS66tAJCf3OCUk0wduj6y5V0KmgZxJHNs-yoQ&usqp=CAU'), fit: BoxFit.cover),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('WINTER WEAR'),
                      ],
                    ),
                  ),


                ],
              ),

            ),
           banner,
            slides,
          ],
        ),
      ),

    );
  }
}
