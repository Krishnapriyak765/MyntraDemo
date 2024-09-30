import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore On Myntra',
          style: TextStyle(color: Colors.grey[600]),
        ),
        backgroundColor: Colors.white,
      ),
      body:
          ListView(
            children: [
              Card(
                child:ListTile(leading: Icon(Icons.ac_unit),
                  title: Text('Myntra Insider'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.live_tv_rounded),
                  title: Text('Myntra Live'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.attractions_sharp),
                  title: Text('Myntra Luxe'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.change_circle_outlined),
                  title: Text('Challenges'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.card_giftcard),
                  title: Text('Gift Cards'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.shopping_bag_outlined),
                  title: Text('Myntra Mall'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.golf_course),
                  title: Text('My Prizes'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.qr_code_scanner),
                  title: Text('Scan for Coupon'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.stars_outlined),
                  title: Text('Myntra Fasion Superstar'),
                ),
              ),
              Card(
                child:ListTile(leading: Icon(Icons.spa_outlined),
                  title: Text('Myntra Masterclass'),
                ),
              ),
            ],

          )
      //
    );
  }
}
