import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({super.key});
  @override
  _NotificationPage createState ()=> _NotificationPage();
}

class Notifications{
  late int id=0;
  late String title="title";
  late String subTitle="subTitile";
  late String profileIcon="url";
  Notifications();
}

class _NotificationPage extends State<NotificationPage>{
  late List<Notifications> notificationsTiles=[];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushNamed("/user");
          },
            icon: const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child:Icon(Icons.arrow_back_ios,color: Colors.white,))),
        title:const Text("Notifications",style:TextStyle(color:Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
            decoration: BoxDecoration(
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
                    icon:Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Icon(Icons.search,size:35,color:Colors.pink),),
                    border:InputBorder.none ,
                    labelText: "Search Query",
                    labelStyle:TextStyle(color: Colors.black54)
                )
            ),
          ),

        ],
      )
    ));
  }
}