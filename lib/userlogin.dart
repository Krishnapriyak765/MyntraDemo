import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myntra/homepage.dart';
import 'package:myntra/signup.dart';
// import 'package:untitled1/signuppage.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

final FirebaseAuth _auth = FirebaseAuth.instance;
// final GoogleSignIn _googleSignIn = GoogleSignIn();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController Uname=TextEditingController();
  TextEditingController Pswd=TextEditingController();

  GoogleSignInAccount? _currentUser;
  String _contactText = '';

  get http => null;

  @override

  void initState() {
    super.initState();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signup(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential result = await auth.signInWithCredential(authCredential);
      User? user = result.user;

      if (result != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }  // if result not null we simply call the MaterialpageRoute,
      // for go to the HomePage screen
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('asset/img.png'),
              SizedBox(height: 64,),
              TextField(
                controller: Uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'PhoneNumber,UserName or email'
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: Pswd,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
              ),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: () {
                if(Uname.text!=''&&Pswd.text!=''){
                  FirebaseFirestore.instance.collection("data").add(
                      {
                        "username":Uname.text,
                        "Password":Pswd.text,
                      }
                  ).then((value){

                    value.update({
                      'id':value.id
                    });


                  });

                }else{
                  print('enter username and password');
                }

                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),);
              }, child: Text('Login'),),


              SizedBox(height: 25,),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:
                    Text("Don't have a account ?"),
                  ),
                  Container(
                      child:
                      InkWell(
                        onTap:() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
                        },
                        child: Text('sign up',style: TextStyle(color: Colors.blue),),

                      )
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
