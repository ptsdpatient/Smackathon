import 'package:flutter/material.dart';
class ContactList extends StatefulWidget{
  const ContactList({super.key});
  @override
  _ContactList createState()=> _ContactList();
}

class _ContactList extends State<ContactList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return(
      Column(
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
                    labelText: "Search Contacts",
                    labelStyle:TextStyle(color: Colors.black54)
                )
            ),
          ),

        ],
      )
  );
  }
}