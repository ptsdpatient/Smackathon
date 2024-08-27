import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';


class Emergency extends StatefulWidget{
  const Emergency({super.key});
  @override
  _Emergency createState()=> _Emergency();
}

class EmergencyButton {
  String title;
  String subtitle;
  IconData icon;
  bool active;

  EmergencyButton({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.active,
  });
}

class _Emergency extends State<Emergency>{


  CameraController? _cameraController;
  List<CameraDescription>? _cameras;
  late Timer? _timer;
  late bool gridView = false;

  late List<EmergencyButton> emergencyButtons=[
      EmergencyButton(
        title:"Alert",
        subtitle: "Alert people near to your proximity",
        icon: Icons.crisis_alert,
        active: false
    ),EmergencyButton(
        title:"Emergency Call",
        subtitle: "One-tap emergency call for immediate assistance.",
        icon: Icons.call,
        active: false
    ),EmergencyButton(
        title:"Live Location",
        subtitle: "Track your location in real-time for added safety",
        icon: Icons.location_pin,
        active: false
    ),EmergencyButton(
        title:"Audio Recording",
        subtitle: "Discretely record audio for evidence and security.",
        icon: Icons.mic_sharp,
        active: false
    ),EmergencyButton(
        title:"Camera Recording",
        subtitle: "Capture photos for documentation and eveidence.",
        icon: Icons.camera_alt,
        active: false
    ),
  ];

  Future<void> initializeCamera() async {
    _cameras = await availableCameras();
    _cameraController = CameraController(
      _cameras!.last,
      ResolutionPreset.medium,
    );
    await _cameraController!.initialize();

    if (mounted) {
      setState(() {});
      startImageCaptureTimer();
    }
  }

  void startImageCaptureTimer() {
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      captureImage();
    });
  }

  Future<void> captureImage() async {
    try {
      final XFile image = await _cameraController!.takePicture();
      // Save or process the captured image
      await GallerySaver.saveImage(image.path);
      print('Captured image: ${image.path}');
    } catch (e) {
      print('Error capturing image: $e');
    }
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _cameraController?.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10,),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon:
                const Row(
                  children: [
                    Text("Sort"),
                    SizedBox(width: 5,),
                    Icon(Icons.sort_rounded)
                  ],
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          gridView=false;
                        });
                      },
                      icon:Icon(!gridView?Icons.view_stream_rounded:Icons.view_agenda_outlined,size: 25,color: Colors.pink,),
                    ),

                    IconButton(
                      onPressed: (){
                        setState(() {
                          gridView=true;
                        });
                      },
                      icon:Icon(gridView?Icons.grid_view_rounded:Icons.grid_view,size: 25,color: Colors.pink,),
                  ),

                ],
              )
            ],
          ),
        ),

        Visibility(
          visible: !gridView,
          child: ListView.builder(
            scrollDirection:Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: emergencyButtons.length, itemBuilder: (context,index){
              EmergencyButton button = emergencyButtons[index];
              return InkWell(
                  highlightColor: Colors.pink.withOpacity(0.5), // Color when tapped
                  splashColor: Colors.pink.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),// Co
                  onTap: (){
                    setState(() {
                      emergencyButtons[index].active=!emergencyButtons[index].active;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal:10,vertical: 20),
                        decoration: BoxDecoration(
                            color: emergencyButtons[index].active?Colors.pink[400]:Colors.white,
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
                                      child: Text(button.title,style:TextStyle(fontSize: 14,color: emergencyButtons[index].active?Colors.white:Colors.black)),
                                    ),
                                    Container(
                                        width: 240,
                                        child:
                                        Text(button.subtitle,style : TextStyle(fontSize: 11,color: emergencyButtons[index].active?Colors.white:Colors.black54))
                                    )
                                  ],
                                ),
                                Icon(button.icon, size:45,color:!emergencyButtons[index].active?Colors.pink[400]:Colors.white)
                              ],
                            )
                        )
                    ),
                  )
              );

        }
        ),
        ),

        Visibility(
          visible: gridView,

          child: GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 10, // Horizontal space between items
                mainAxisSpacing: 10, // Vertical space between items
              ),
              itemCount: emergencyButtons.length, itemBuilder: (context,index){
            EmergencyButton button = emergencyButtons[index];
            return InkWell(
                highlightColor: Colors.pink.withOpacity(0.5), // Color when tapped
                splashColor: Colors.pink.withOpacity(0.2),  
                borderRadius: BorderRadius.circular(20),// Color of the ripple
                onTap: (){
                  setState(() {
                    emergencyButtons[index].active=!emergencyButtons[index].active;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal:0,vertical: 20),
                      decoration: BoxDecoration(
                          color: emergencyButtons[index].active?Colors.pink[400]:Colors.white,
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
                      child: Padding(padding: EdgeInsets.symmetric(horizontal:0,vertical: 5),
                          child:Center(

                            child: Icon(button.icon, size:50,color:!emergencyButtons[index].active?Colors.pink[400]:Colors.white),


                          )
                      )
                  ),
                )
            );

          }
          ),
        ),

        SizedBox(height: 50,)
      ],

  );
  }
}