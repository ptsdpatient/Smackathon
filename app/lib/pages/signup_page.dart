import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget{
  const SignupPage({super.key});
  @override
  _SignupPage createState()=> _SignupPage();
}

class _SignupPage extends State<SignupPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/icon.jpg",width:200),
                    const SizedBox(height:15),
                    const Text("s a f e g u a r d", style:TextStyle(color:Colors.orange,fontSize: 20)),
                    const Text("Mobile Service", style:TextStyle(color:Colors.orange,fontSize: 10)),
                  ],
                ),
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 20),
                      child:Text("Sign Up",style : TextStyle(
                        fontSize: 25,
                      )),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                        child:Container(
                          padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color:Colors.black26,
                                  offset:Offset(0.5, 0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ]
                          ),
                          child: const TextField(
                              cursorColor: Colors.pink,
                              decoration:InputDecoration(
                                  icon:Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Icon(Icons.account_circle,size:35,color:Colors.pink),),
                                  border:InputBorder.none ,
                                  labelText: "username/email",
                                  labelStyle:TextStyle(color: Colors.black54)
                              )),
                        )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                        child:Container(
                          padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color:Colors.black26,
                                  offset:Offset(0.5, 0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ]
                          ),
                          child: const TextField(
                              cursorColor: Colors.pink,
                              decoration:InputDecoration(
                                  icon:Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Icon(Icons.password_rounded,size:35,color:Colors.pink),),
                                  border:InputBorder.none ,
                                  labelText: "password",
                                  labelStyle:TextStyle(color: Colors.black54)
                              )
                          ),
                        )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                        child:Container(
                          padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color:Colors.black26,
                                  offset:Offset(0.5, 0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ]
                          ),
                          child: const TextField(
                              cursorColor: Colors.pink,
                              decoration:InputDecoration(
                                  icon:Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Icon(Icons.password_rounded,size:35,color:Colors.pink),),
                                  border:InputBorder.none ,
                                  labelText: "confirm password",
                                  labelStyle:TextStyle(color: Colors.black54)
                              )
                          ),
                        )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                        child:Container(
                            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.pink,
                                boxShadow: const [
                                  BoxShadow(
                                    color:Colors.black26,
                                    offset:Offset(0.5, 0.5),
                                    spreadRadius: 0.5,
                                    blurRadius: 0.5,
                                  )
                                ]
                            ),
                            child: Text("Sign Up!",style:TextStyle(color:Colors.white,fontSize: 14)),
                        )
                    ),
                    Text("Already have an account?"),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushNamed("/login");
                      }, child: Text("Log In"))
                  ],
                ),
              ],
            ),
        ),
      )
    );
  }
}