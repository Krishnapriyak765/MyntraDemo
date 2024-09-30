import 'package:flutter/material.dart';
import 'package:myntra/helpCenter.dart';
import 'package:myntra/orders.dart';
import 'package:myntra/userlogin.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.grey[600]),
        ),
      ),

      body:
      Container(
        
          child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text(
              'Shopping for Priya',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Row(
                    children: [
                      Icon(Icons.school_outlined),Text('SELECT'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Row(
                    children: [
                      Icon(Icons.link),Text('58 Super Coins')

                    ],
                  ),
                ),

              ],
            ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border:Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(50),image: DecorationImage(image: NetworkImage('https://www.w3mirchi.com/images/alphabet/1293-alphabet-blue-white-p.gif'),),
            ),
          ),
          Expanded(
            child:
            ListView(
              children: [
                InkWell(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Orders()));
                },
                  child: Card(
                    child:ListTile(leading: Icon(Icons.wallet_giftcard_rounded),
                      title: Text('Orders',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      subtitle: Text('Check your order status'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Task()));
                  },
                  child: Card(
                    child:ListTile(leading: Icon(Icons.person_pin),
                      title: Text('Help Center',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      subtitle: Text('Help regarding your recent purchases'),
                    ),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.kayaking),
                    title: Text('Myntra Insider',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Redeem Rewards using supercoins!'),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.radar_outlined),
                    title: Text('Challenges',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Daily purchase'),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.favorite_border_outlined),
                    title: Text('Wishlist',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Your most loved styles'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Card(
                    child:ListTile(leading: Icon(Icons.mail_lock_outlined),
                      title: Text('Myntra Credit',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      subtitle: Text('Manage all your refunds & gift  cards'),
                    ),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.api_rounded),
                    title: Text('MynCash',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Earn MynCash as you shop and use them in checkout'),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.screen_lock_landscape_sharp),
                    title: Text('Saved Cards ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Save your cards for faster checkout'),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.event_note),
                    title: Text('Saved  VPA',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('View you saved VPA'),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.location_pin),
                    title: Text('Adress',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Save Addresses for a hassle-free checkout'),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.credit_card),
                    title: Text('Coupons',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Manage coupons for additional discounts'),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.generating_tokens_outlined),
                    title: Text('My Prizes',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('View your prizes for completing critical milestones'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Card(
                    child:ListTile(leading: Icon(Icons.manage_accounts_outlined),
                      title: Text('Manage Your Account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      subtitle: Text('Password,Email ID and Phone number'),
                    ),
                  ),
                ),
                Card(
                  child:ListTile(leading: Icon(Icons.settings_suggest_outlined),
                    title: Text('Settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text('Manage notifications & app settings'),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child: Text('Login'))
              ],
            ),

          )
        ],
      ),
          )),


    );
  }
}
