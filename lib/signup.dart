import 'package:flutter/material.dart';
import 'package:myntra/homepage.dart';
import 'package:myntra/userlogin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Image.asset('asset/img.png'),
                    SizedBox(height: 25,),
                    Text('Sign up to see photos and videos \n from your friend',style: TextStyle(color: Colors.grey,fontSize: 20),),
                    SizedBox(height: 25,),
                    Container(
                      width: 400,
                      height: 50,
                      color: Colors.blue,
                      child: InkWell(
                        onTap: () {},
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook,color: Colors.grey,),
                            Text('Log in with facebook',style: TextStyle(color: Colors.grey,fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 2,
                          width: 100,
                          color: Colors.black54,
                        ),
                        Text('OR'),
                        Container(
                          height: 2,
                          width: 100,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Full Name',
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'User Name',
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
                    }, child: Text('sign up'),),
                    Text('By signing up,you agree to our  term & privacy policy ',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 25,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('Have an account?',style: TextStyle(color: Colors.grey),),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),),);
                          },
                          child: Container(
                            child: Text('Log in',style: TextStyle(color: Colors.blue),),
                          ),
                        )
                      ],
                    )

                  ]
              ),
            ),
          ),
        )
    );
  }
}