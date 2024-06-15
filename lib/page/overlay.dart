import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OverlayPage extends GetView{
  var overlayController = OverlayPortalController();
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body:
  Center(
    child: OverlayPortal(
      controller: overlayController,

      overlayChildBuilder: (BuildContext context) {
        return Positioned(top: 50,left: 50,child: Text('data',style: TextStyle(color: Colors.black),));
      },
      child: ElevatedButton(onPressed: (){ overlayController.toggle();}, child:Text('overlay portal'),
        ),
    ),
));
  }

}