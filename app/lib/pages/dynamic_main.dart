import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:women_safety/pages/profile.dart';
import 'contact_list.dart';
import 'emergency.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DynamicMain extends StatefulWidget{
  const DynamicMain({super.key});
  @override
  _DynamicMain createState()=>_DynamicMain();
}

class UserProfile{
  late double id =0;
  late String mobile= "+91 0000000000";
  late String name ="username";
  late String email ="username";
  late String adhaar ="username";
  late String version ="username";
  UserProfile();
}




class _DynamicMain extends State<DynamicMain>{
  @override
  int pageNav=0;

  @override
  initState()  {
    super.initState();
  }

  @override
  void dispose() {
    // Dispose the controller to avoid memory leaks
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  UserProfile userProfile= UserProfile();

  _callNumber(number) async{//set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        key:_scaffoldKey,
        backgroundColor: Colors.white,
        floatingActionButton: pageNav!=2? FloatingActionButton(onPressed: (){
          switch(pageNav){
            case 0:{
              Navigator.of(context).pushNamed('/call');
            }break;
            case 1:{

            }break;
            case 2:{

            }break;
          }

        },shape: const CircleBorder(),elevation: 5,backgroundColor: Colors.pink
          ,child:Icon(pageNav==0?Icons.done:Icons.person_add,color:Colors.white),
        ):Container(),
        endDrawer:Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(decoration: BoxDecoration(

                  ),child: Column(
                    children: [
                      Icon(Icons.account_circle,size : 100,color:Colors.pink),
                      Text("Welcome User",style: TextStyle(fontSize: 15),),
                    ],
                  ),),
                  SizedBox(height:20),
                  ListTile(title: Text("Name"),subtitle: Text(userProfile.name)),
                  ListTile(title: Text("UID"),subtitle: Text(userProfile.id.toString())),
                  ListTile(title: Text("adhaar"),subtitle: Text(userProfile.adhaar)),
                  ListTile(title: Text("email"),subtitle: Text(userProfile.email)),
                  ListTile(title: Text("mobile"),subtitle: Text(userProfile.mobile)),
                  ListTile(title: Text("Version"),subtitle: Text(userProfile.name)),
                ],
              ),
              Column(
                children: [

                     ElevatedButton(onPressed: (){
                       Navigator.of(context).pop();
                     },

                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.pink,
                           foregroundColor: Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.zero
                           )
                         ),
                         child:
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [

                        Text("Logout",style: TextStyle(color:Colors.white),),Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:  Icon(Icons.logout,color: Colors.white,))

                      ]
                        ,)
                      ,)

                  )
                ],
              )
            ],
  
          ),
        ),

        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          animationCurve: Curves.fastOutSlowIn,
          color:Colors.pink,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.pink,
          items: const [
            Padding(padding: EdgeInsets.symmetric(vertical: 0),child: Icon(Icons.home,size:40,color: Colors.white,),),
            Padding(padding: EdgeInsets.symmetric(vertical: 0),child:Icon(Icons.contacts,size:40,color: Colors.white,)),
            Padding(padding: EdgeInsets.symmetric(vertical: 0),child:Icon(Icons.settings,size:40,color: Colors.white,)),
          ],
          onTap: (index){
            setState(() {
              pageNav=index;
            });
          },
          animationDuration: const Duration(milliseconds: 300),

        ),


        body: CustomScrollView(
          slivers: [
            SliverAppBar.medium(
              backgroundColor: Colors.pink,

              leading:IconButton(onPressed: (){Navigator.of(context).pushNamed("/notifications");}, icon:const Padding(padding:EdgeInsets.symmetric(horizontal: 10),child:Icon(Icons.notifications_active_outlined,color:Colors.white,size:35))),
              automaticallyImplyLeading: false,
              title:Text(pageNav==0?"Emergency":(pageNav==1?"Contact List":"Profile"),style: const TextStyle(color:Colors.white),),
              centerTitle: true,
              actions: [
                IconButton(onPressed: (){
                  _scaffoldKey.currentState?.openEndDrawer();
                  }, icon: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child:Icon(Icons.account_circle,size:40,color: Colors.white,)
                ))

              ],
            ),
            SliverToBoxAdapter(
              child:
                Container(
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  child:pageNav==0?const Emergency():(pageNav==1?const ContactList():const Profile()),
                )

            )
          ],
        ),
      );
  }
}