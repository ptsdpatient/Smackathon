import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
class ContactList extends StatefulWidget{
  const ContactList({super.key});
  @override
  _ContactList createState()=> _ContactList();
}


class _ContactList extends State<ContactList>{
  @override

  List<Contact>? _contacts=[];
  bool _permissionDenied = false;



  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }
  @override
  void dispose() {
    // Cancel any subscriptions, timers, etc.

    super.dispose();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts(withPhoto: true,withThumbnail: true);
      setState(() => _contacts = contacts);
    }
  }


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
         SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           child: Column(
             children: [

             ],
           )
         )

        ],
      )
  );
  }


}