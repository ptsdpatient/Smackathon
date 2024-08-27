import 'dart:math';

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget{
  const SignupPage({super.key});
  @override
  _SignupPage createState()=> _SignupPage();
}

class _SignupPage extends State<SignupPage>{
  late int currentStep=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body:Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Image.asset("images/icon.jpg",width:100),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("s a f e g u a r d", style:TextStyle(color:Colors.orange,fontSize: 17,fontWeight: FontWeight.bold)),
                            Text("Mobile Service", style:TextStyle(color:Colors.orange,fontSize: 11)),
                          ],
                        )
                      ],
                    ),
                    Text("Sign Up", style:TextStyle(color:Colors.black87,fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Theme(
                      data: ThemeData(
                        colorScheme: ColorScheme.light(
                          primary: Colors.pink,
                        ),

                      ),
                        child: Stepper(currentStep: currentStep,
                            margin: EdgeInsets.zero,
                            onStepTapped: (int stepNumber)=>{
                              setState(() {
                                currentStep=stepNumber;
                              })
                            },
                            onStepContinue: ()=>{
                              setState(() {
                                //validate user here!
                                if(currentStep<2)currentStep++;
                                else loginUser();
                              })
                            },
                            onStepCancel: ()=>{
                              setState(() {
                                if(currentStep>0)currentStep--;
                              })
                            },
                            steps: [
                          Step(
                            title: Text("User Details"),
                            subtitle: Container(
                                width: 275,
                                child: Text("Fill out your username and name.",style:TextStyle(color: Colors.black54)),
                              ),
                            isActive: currentStep==0,
                            state: currentStep==0?StepState.indexed:StepState.complete,

                            content: Column(
                              children: [
                                Padding(padding: const EdgeInsets.only(top: 10),
                                    child:Container(
                                      padding: const EdgeInsets.symmetric(horizontal:5,vertical: 0),
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
                                      child: const Padding(
                                        padding: EdgeInsets.only(left:10),
                                        child: TextField(
                                            cursorColor: Colors.pink,
                                            decoration:InputDecoration(
                                                border:InputBorder.none ,
                                                labelText: "Username",
                                                labelStyle:TextStyle(color: Colors.black54)
                                            )
                                        ),
                                      ),
                                    )
                                ),Padding(padding: const EdgeInsets.only(top:10),
                                    child:Container(
                                      padding: const EdgeInsets.symmetric(horizontal:5,vertical: 0),
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
                                      child: const Padding(
                                        padding: EdgeInsets.only(left:10),
                                        child: TextField(
                                            cursorColor: Colors.pink,
                                            decoration:InputDecoration(
                                                border:InputBorder.none ,
                                                labelText: "Full name",
                                                labelStyle:TextStyle(color: Colors.black54)
                                            )
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            )
                          ),


                          Step(
                              title: Text("Email and Mobile"),
                              subtitle: Container(
                                width: 275,
                                child: Text("write your email id and mobile number",style:TextStyle(color: Colors.black54)),
                              ),
                              isActive: currentStep==1,
                              state: currentStep==2?StepState.complete:StepState.indexed,
                              content:Column(
                                children: [
                                  Padding(padding: const EdgeInsets.only(top: 10),
                                      child:Container(
                                        padding: const EdgeInsets.symmetric(horizontal:5,vertical: 0),
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
                                        child: const Padding(
                                          padding: EdgeInsets.only(left:10),
                                          child: TextField(
                                              cursorColor: Colors.pink,
                                              decoration:InputDecoration(
                                                  border:InputBorder.none ,
                                                  labelText: "Email id",
                                                  labelStyle:TextStyle(color: Colors.black54)
                                              )
                                          ),
                                        ),
                                      )
                                  ),Padding(padding: const EdgeInsets.only(top:10),
                                      child:Container(
                                        padding: const EdgeInsets.symmetric(horizontal:5,vertical: 0),
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
                                        child: const Padding(
                                          padding: EdgeInsets.only(left:10),
                                          child: TextField(
                                              cursorColor: Colors.pink,
                                              decoration:InputDecoration(
                                                  border:InputBorder.none ,
                                                  labelText: "Mobile number",
                                                  labelStyle:TextStyle(color: Colors.black54)
                                              )
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              )

                          ),
                          Step(
                            title: Text("Authentication"),
                            subtitle: Container(
                              width: 275,
                              child: Text("Pick a strong password.",style:TextStyle(color: Colors.black54)),
                            ),
                            isActive: currentStep==2,
                            state: StepState.indexed,
                            content:Column(
                            children: [
                              Padding(padding: const EdgeInsets.only(top: 10),
                                  child:Container(
                                    padding: const EdgeInsets.symmetric(horizontal:5,vertical: 0),
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
                                    child: const Padding(
                                      padding: EdgeInsets.only(left:10),
                                      child: TextField(
                                          cursorColor: Colors.pink,
                                          decoration:InputDecoration(
                                              border:InputBorder.none ,
                                              labelText: "Password",
                                              labelStyle:TextStyle(color: Colors.black54)
                                          )
                                      ),
                                    ),
                                  )
                              ),Padding(padding: const EdgeInsets.only(top:10),
                                  child:Container(
                                    padding: const EdgeInsets.symmetric(horizontal:5,vertical: 0),
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
                                    child: const Padding(
                                      padding: EdgeInsets.only(left:10),
                                      child: TextField(
                                          cursorColor: Colors.pink,
                                          decoration:InputDecoration(
                                              border:InputBorder.none ,
                                              labelText: "Confirm Password",
                                              labelStyle:TextStyle(color: Colors.black54)
                                          )
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          )
                          ),


                        ]),
                    ),


                    const Padding(padding: EdgeInsets.only(top:10),
                      child: Text("Already have an account?"),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushNamed("/login");
                      }, child: const Text("Log In",style: TextStyle(color:Colors.pink),))
                  ],
                ),
              ],
            ),
        ),
      )
    );
  }

  void loginUser() {


  }
}