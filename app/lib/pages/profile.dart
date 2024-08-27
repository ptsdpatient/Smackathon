import 'package:flutter/material.dart';
class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  _Profile createState()=> _Profile();
}

class _Profile extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(DefaultTabController(length: 2, child: Column(
      children: [
        TabBar(tabs: [
          Tab(icon:Icon(Icons.settings,size:35,color:Colors.pink),text: "Settings",),
          Tab(icon:Icon(Icons.account_circle,size:35,color:Colors.pink),text:"Profile"),
          ]),
        TabBarView(
            children: [
              Text("Setting"),
              Text("Profile")
          ])
      ],
    )
    )
    );
  }
}