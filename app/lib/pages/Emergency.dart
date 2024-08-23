import 'package:flutter/material.dart';
class Emergency extends StatefulWidget{
  const Emergency({super.key});
  @override
  _Emergency createState()=> _Emergency();
}

class _Emergency extends State<Emergency>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "/call");
          },
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black26,
                        offset:Offset(0.5, 0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      )
                    ]
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text("Emergency Call",style:TextStyle(fontSize: 14)),
                            ),
                            Container(
                              width: 240,
                              child:
                                Text("One-tap emergency call for immediate assistance.",style : TextStyle(fontSize: 11,color: Colors.black54))
                            )
                              ],
                        ),
                        Icon(Icons.call, size:40,color:Colors.pink)
                      ],
                    )
                )
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "/call");
          },
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black26,
                        offset:Offset(0.5, 0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      )
                    ]
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text("Live Location",style:TextStyle(fontSize: 14)),
                            ),
                            Container(
                                width: 240,
                                child:
                                Text("Track your location in real-time for added safety",style : TextStyle(fontSize: 11,color: Colors.black54))
                            )
                          ],
                        ),
                        Icon(Icons.location_pin, size:40,color:Colors.pink)
                      ],
                    )
                )
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "/call");
          },
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black26,
                        offset:Offset(0.5, 0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      )
                    ]
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text("Audio Recording",style:TextStyle(fontSize: 14)),
                            ),
                            Container(
                                width: 240,
                                child:
                                Text("Discreetly record audio for evidence and security.",style : TextStyle(fontSize: 11,color: Colors.black54))
                            )
                          ],
                        ),
                        Icon(Icons.mic_sharp, size:40,color:Colors.pink)
                      ],
                    )
                )
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "/call");
          },
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black26,
                        offset:Offset(0.5, 0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      )
                    ]
                ),
                child: Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text("Camera Recording",style:TextStyle(fontSize: 14)),
                            ),
                            Container(
                                width: 240,
                                child:
                                Text("Capture photos for documentation and evidence.",style : TextStyle(fontSize: 11,color: Colors.black54))
                            )
                          ],
                        ),
                        Icon(Icons.camera_alt, size:40,color:Colors.pink)
                      ],
                    )
                )
            ),
          ),
        ),
      ],
    ),
  );
  }
}