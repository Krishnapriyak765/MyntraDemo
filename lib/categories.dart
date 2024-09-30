import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';


class Catogories extends StatefulWidget {
  const Catogories({Key? key}) : super(key: key);

  @override
  State<Catogories> createState() => _CatogoriesState();
}
List banner = [
  'assett/1 (15).jpg',
  'assett/1 (14).jpg',
  'assett/1 (13).jpg',
  'assett/1 (12).jpg',
  'assett/1 (11).jpg',
  'assett/1 (10).jpg',
  'assett/1 (9).jpg',
  'assett/1 (8).jpg',
  'assett/1 (7).jpg',
  'assett/1 (6).jpg',
  'assett/1 (5).jpg',
  'assett/1 (4).jpg',
  'assett/1 (3).jpg',
  'assett/1 (2).jpg',
  'assett/1 (1).jpg',

];

class _CatogoriesState extends State<Catogories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: (Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            )),
          ),
          IconButton(
            onPressed: () {},
            icon: (Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            )),
          ),
        ],
      ),
      body:


      ListView.builder(
        physics: ScrollPhysics(),
          itemCount: banner.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context,int index){
            final img =banner[index];
        return  Column(

            children: <Widget>[
         ExpansionTile(


childrenPadding: EdgeInsets.zero,
tilePadding: EdgeInsets.zero,
           trailing: const SizedBox(),
        title: Container(
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(banner[index]),fit: BoxFit.cover)
          ),
        ),

            children: <Widget>[
            ListTile(title:
            Column(
            children: [Flex(direction: Axis.horizontal),
              Text('Sale is Live'),
              Text('Showstopper'),
              Text('Specials'),
              Text('Rewards'),
              Text('Stores in spotlight'),
              Text('More stores to explore'),
          ],
        )


            ),
          ],
        ),
            ],
         );

      }
      )
    );
  }
}
