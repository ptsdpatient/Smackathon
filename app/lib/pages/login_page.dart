import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override
  _LoginPage createState()=> _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Login"),
          leading:IconButton(onPressed: (){
            Navigator.of(context).pushNamed('/signup');
          }, icon: const Icon(Icons.arrow_back)),
        ),
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
                    const SizedBox(height:10)
                  ],
                ),
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 20),
                      child:Text("Login",style : TextStyle(
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
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                        child:Container(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
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
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, "/user");
                          }, child: Text("Log In!",style:TextStyle(color:Colors.white,fontSize: 14))),
                        )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                        child:Container(
                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network("https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png",width: 40,),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Text("Sign in using Gmail"),
                              )
                            ],
                          )
                        )
                    ),

                  ],
                ),

              ],
            ),
          )
      ),
    );
  }
}