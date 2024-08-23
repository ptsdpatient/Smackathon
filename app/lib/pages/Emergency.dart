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
                            Text("Emergency"),

                             Wrap(
                               children: [Text("One-tap emergency call www w w w w w w w w w",textAlign: TextAlign.left,style:TextStyle(fontSize: 12,color: Colors.black54,),),
                               ],
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
                            Text("Live Location"),
                            Text("Track your location "),
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
                            Text("Audio Recording"),
                            Text("Record audio for evid"),
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
                            Text("Camera Recording"),
                            Text("Capture photos for docu"),
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