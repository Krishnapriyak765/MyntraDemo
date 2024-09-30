import 'package:flutter/material.dart';
import 'package:myntra/categories.dart';
import 'package:myntra/explore.dart';
import 'package:myntra/orders.dart';
import 'package:myntra/page1.dart';
import 'package:myntra/profile.dart';
import 'package:myntra/studio.dart';
import 'package:myntra/winterwear.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
    TextStyle optionStyle =
        TextStyle(fontSize: 30 , fontWeight: FontWeight.bold );
    List<Widget> _WidgetOptions = <Widget>[
     Page1(),
     Catogories(),
      Studio(),
     Explore(),
    Profile(),
      Orders(),
      Winterwear(),
    ];

    void _OnItemTapped(int index){

      setState(() {
        _selectedIndex = index;
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

          _WidgetOptions.elementAt(_selectedIndex),



      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_view_month_outlined,
                color: Colors.black,
              ),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv_rounded,
                color: Colors.black,
              ),
              label: 'Studio'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: Colors.black,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
                color: Colors.black,
              ),
              label: 'Priya'),
        ],

        currentIndex: _selectedIndex,
        onTap: _OnItemTapped,
      ),
    );
  }
}
