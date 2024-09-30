
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myntra/gallery.dart';
import 'package:myntra/widgets/banner.dart';
import 'package:myntra/widgets/slides.dart';
import 'package:myntra/winterwear.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Color(0xA5000000),

      drawer: Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children:  <Widget>[
      DrawerHeader(

        decoration: BoxDecoration(
          color: Color(0x28752DA4),

        ),
          child:
       Icon(Icons.account_box_rounded,color: Colors.white,size: 100,),
    // Text(
    //       'Priya',
    //       style: TextStyle(
    //         color: Colors.white,
    //         fontSize: 24,
    //       ),
    //     ),

      ),
      ListTile(
        leading: Icon(Icons.calendar_view_month_outlined),
        title: Text('Shop by Categories'),
      ),
      ListTile(
        leading: Icon(Icons.wallet_giftcard_rounded),
        title: Text('Orders'),
      ),
      ListTile(
        leading: Icon(Icons.call),
        title: Text('Contact us'),
      ),
      ElevatedButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
          }, child: Text('Admin'))
     ],

    ),


      ),


      appBar: AppBar(
leading: Builder(builder: (BuildContext context){
  return IconButton(onPressed: (){
    Scaffold.of(context).openDrawer();
  }, icon: Icon(Icons.menu,color: Colors.black,));
}),


        title: const Text(
          'Select',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
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
              Icons.notifications_outlined,
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

      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        SingleChildScrollView(

          child: Column(
            children: [
              Container(
                height: 110,
                width: double.infinity,

                child:
                StreamBuilder<QuerySnapshot>(//to the
                  stream: FirebaseFirestore.instance.collection('Brandname').orderBy('date',descending: false).snapshots(),
                  builder: (context, snapshot) {
                    var data=snapshot.data?.docs;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: data?.length,
                        itemBuilder: (context,index){
                      return    Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            InkWell(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Winterwear(),),);
                            },
                              child:
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                       // data![index]['image']
                                          'https://www.shutterstock.com/image-photo/portrait-funky-crazy-two-people-600w-1502293334.jpg'
                                      ),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8 ,),
                          // Text(data[index]['Brandname'])
                        ],
                      );

                    });
                  }
                ),


              ),
        //       SingleChildScrollView(
        //         scrollDirection: Axis.horizontal,
        //
        //         child:
        //         Row(
        //
        //           children: [
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child:
        //                   InkWell(onTap: (){
        //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Winterwear(),),);
        //                   },
        //                     child:
        //                     Container(
        //                       height: 70,
        //                       width: 70,
        //                       decoration: BoxDecoration(
        //                         image: DecorationImage(
        //                             image: NetworkImage(
        //                                 'https://www.shutterstock.com/image-photo/portrait-funky-crazy-two-people-600w-1502293334.jpg'),
        //                             fit: BoxFit.cover),
        //                         border: Border.all(color: Colors.white),
        //                         borderRadius: BorderRadius.circular(50),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: 8 ,),
        //                 Text('WINTER WEAR'),
        //               ],
        //             ),
        //
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child:
        //                   Container(
        //                     height: 70,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                       image: DecorationImage(
        //                           image: NetworkImage(
        //                               'https://g3fashion.com/blog/wp-content/uploads/2021/06/mens-casual-wear.jpg'),
        //                           fit: BoxFit.cover),
        //                       border: Border.all(color: Colors.white),
        //                       borderRadius: BorderRadius.circular(50),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: 8 ,),
        //                 Text('MEN'),
        //               ],
        //             ),
        //
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Container(
        //                     height: 70,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                       image: DecorationImage(
        //                           image: NetworkImage(
        //                               'https://img.faballey.com/images/Product/ETP00041Z/1.jpg'),
        //                           fit: BoxFit.cover),
        //                       border: Border.all(color: Colors.white),
        //                       borderRadius: BorderRadius.circular(50),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: 8 ,),
        //                 Text('WOMEN'),
        //               ],
        //             ),
        //
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Container(
        //                     height: 70,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                       image: DecorationImage(
        //                           image: NetworkImage(
        //                               'https://thumbs.dreamstime.com/z/portrait-cute-little-kids-boy-girl-stylish-jeans-clothes-looking-camera-against-white-studio-wall-fashion-happy-133012041.jpg'),
        //                           fit: BoxFit.cover),
        //                       border: Border.all(color: Colors.white),
        //                       borderRadius: BorderRadius.circular(50),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: 8 ,),
        //                 Text('KIDS'),
        //               ],
        //             ),
        //
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Container(
        //                     height: 70,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                       image: DecorationImage(
        //                           image: NetworkImage(
        //                               'https://assets.thehansindia.com/h-upload/2021/11/06/1120572-makeup.webp'),
        //                           fit: BoxFit.cover),
        //                       border: Border.all(color: Colors.white),
        //                       borderRadius: BorderRadius.circular(50),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: 8 ,),
        //                 Text('BEAUTY'),
        //               ],
        //             ),
        //
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Container(
        //                     height: 70,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                       image: DecorationImage(
        //                           image: NetworkImage(
        //                               'https://media.istockphoto.com/id/1279108197/photo/variety-of-womens-fashion-comfortable-shoes-of-all-seasons-on-a-light-background-top-view.jpg?b=1&s=170667a&w=0&k=20&c=K4XGHnA8DrYHYDKYXLHoRJTiRbNK5Gx4955ADG24hzM='),
        //                           fit: BoxFit.cover),
        //                       border: Border.all(color: Colors.white),
        //                       borderRadius: BorderRadius.circular(50),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: 8 ,),
        //                 Text('FOOTWEAR'),
        //               ],
        //             ),
        //
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Container(
        //                     height: 70,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                       image: DecorationImage(
        //                           image: NetworkImage(
        //                               'https://thumbs.dreamstime.com/b/jewelry-2132036.jpg'),
        //                           fit: BoxFit.cover),
        //                       border: Border.all(color: Colors.white),
        //                       borderRadius: BorderRadius.circular(50),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: 8 ,),
        //                 Text('JEWELLERY'),
        //               ],
        //             ),
        //             //
        //
        //           ],
        // ),
        //       ),

              // Row(
              //   children: [

              // Container(
              //   height: 600,
              //   child: StreamBuilder<QuerySnapshot>(
              //     stream: FirebaseFirestore.instance.collection('items').snapshots(),
              //     builder: (context, snapshot) {
              //       var data=snapshot.data?.docs;
              //       return ListView.builder(
              //         itemCount: data?.length,
              //           itemBuilder: (context, index){
              //         return
                        Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
                          // data![index]['image']
                            'https://cdn.myportfolio.com/e7a38f0258bffc559c2d42a7d2a9389f/f0fb61af-6e2b-4960-9e44-3cde5dedaf5b_rw_1920.jpg?h=7adb0e0e929a1ab9985d9cb8ce996fcc'
                        ))),
    ),

              slides,
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://assets.myntassets.com/f_auto,q_auto:eco,dpr_1.3,w_600,c_limit,fl_progressive/assets/images/retaillabs/2022/12/16/c89d3a48-7fb7-446c-b668-2bb1f5b8109e1671189054125-c3cbd9be-3f84-4fb3-a8e3-ad38ae0548651671007675855-Snow-Anim_light-winterwear.gif'))),
              ),
              banner,
                ],
              // ),

          ),

      ),),
    );
  }
}
