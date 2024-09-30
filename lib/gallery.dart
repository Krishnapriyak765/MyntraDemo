import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  TextEditingController name=TextEditingController();
  File? imageFile;
  String url='';
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        uploadImageToFirebase();
      },);
    }
  }
  Future uploadImageToFirebase() async {
    DocumentSnapshot id = await FirebaseFirestore
        .instance
        .collection('uploadimage')
        .doc("uploadImage")
        .get();
    id.reference.update(
        {"uploadImage": FieldValue.increment(1)});
    var imageId = id['uploadImage'];
    //to show the image in order in number

    Reference firebaseStorageRef =
    FirebaseStorage.instance.ref().child('deposits/image${imageId}');
    UploadTask uploadTask = firebaseStorageRef.putFile(imageFile!);
    TaskSnapshot taskSnapshot = (await uploadTask);
    String value = await taskSnapshot.ref.getDownloadURL();
    //to store in storage

    // if(value!=null){
    //   imageList.add(value);
    // }
    setState(() {
      url = value;
FirebaseFirestore.instance.collection('items')
    .add({
  'image':url
  // to pass img url from storage  to firebase
}).then((value) {
  value.update({
    'id':value.id
  });
});

//increment field name number
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Add image',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:
          Column(
            children: [
              imageFile==null?Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.teal,
                ),
              ):Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.teal,
                  image: DecorationImage(image: FileImage(imageFile!),
                  fit: BoxFit.cover,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: double.infinity,

                  child: Column(
                    children: [
                      ElevatedButton(
                      onPressed: (){
                        _getFromGallery();
                      },
                      child: Text('Select Image'),),
                      ElevatedButton(
                          onPressed: (){
                            if(name.text!=''&&url!=''){
                            FirebaseFirestore.instance.collection('Brandname').add({
                              "Brandname":name.text,
                              'image':url,
                              'date':DateTime.now()
                            }).then((value) {
                              value.update({
                                'id':value.id
                              });
                            });
                           }
                          }, child: Text('Add')),],
                  ),
                ),
              ),
            ],
          ),


    );
  }
}
