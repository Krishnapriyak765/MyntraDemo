import 'package:flutter/material.dart';
import 'package:myntra/list.dart';

class Winterwear extends StatefulWidget {
  const Winterwear({Key? key}) : super(key: key);

  @override
  State<Winterwear> createState() => _WinterwearState();
}

class _WinterwearState extends State<Winterwear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text(
          'WINTERWEAR',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: (const Icon(
              Icons.search,
              color: Colors.black,
            )),
          ),
          IconButton(
            onPressed: () {},
            icon: (const Icon(
              Icons.favorite_border,
              color: Colors.black,
            )),
          ),
          IconButton(
            onPressed: () {},
            icon: (const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            )),
          ),
        ],
      ),
      body:
      GridView.builder(
          itemCount: Kids.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(BuildContext context , int index){
        return Column(
          children: [
            Container(
              height: 100,
              width:100,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(Kids[index]['image']),fit: BoxFit.cover)),
             
            ),
            Text(Kids[index]['name']),
            Text(Kids[index]['description']),
            Text(Kids[index]['price']),
          ],
        );
      } )
    );
  }
}
