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

  Future<List<Contact>?> _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
      return _contacts;
    } else {
      final contacts = await FlutterContacts.getContacts(withPhoto: true,withThumbnail: true);
      setState(() => _contacts = contacts);
      return _contacts;
    }
  }


  Widget build(BuildContext context) {
    // TODO: implement build
  return(
      Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: const BoxDecoration(
                color: Colors.white,
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

           FutureBuilder<List<Contact>?>(
             future: _fetchContacts(),
             builder: (context, snapshot) {
               final List<Contact>? contacts= snapshot.data;
               if(snapshot.data==null){
                 return Container(
                   width: 200,
                   height: 200,
                   child:const Center(
                     child:CircularProgressIndicator(
                       backgroundColor: Colors.white,
                       color: Colors.pink,
                     ),
                   )
                 );
               }else {
                 return ListView.builder(
                 shrinkWrap: true,
                 physics: const BouncingScrollPhysics(),

                 scrollDirection: Axis.vertical,
                 itemCount: contacts?.length,
                 itemBuilder: (context,index){
                   final Contact? contact = contacts?[index];
                   return Padding(
                     padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                     child:Container(
                       padding: const EdgeInsets.all(20),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.pinkAccent[300],
                         boxShadow: const [
                           BoxShadow(
                             color: Colors.pinkAccent,
                             offset: Offset(0.5, 0.5),
                           )
                         ]
                       ),
                       child: SizedBox(
                         width: 300,
                         child: Text(contact!.displayName,style: const TextStyle(color: Colors.white),),
                       ),
                     )
                   );
                 },
               );
               }
             }
           ),
        ],
      )
  );
  }


}