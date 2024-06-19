import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:play_ground/widget/customDialog.dart';

class OverlayPage extends GetView {
  var overlayController = OverlayPortalController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            OverlayPortal(
              controller: overlayController,
              overlayChildBuilder: (BuildContext context) {
                return Positioned(
                    top: 50,
                    left: 50,
                    child: Text(
                      'data',
                      style: TextStyle(color: Colors.black),
                    ));
              },
              child: ElevatedButton(
                onPressed: () {
                  overlayController.toggle();
                },
                child: Text('overlay portal'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (context){
                 return  CustomDialog(actionMap: {'Ok':()=>print('ok'),'Cancel':()=>print('Cancel')}, title: 'TEST', description: "this is a test dialog");
                });
              },
              child: Text('overlay portal'),
            ),
          ],
        ));
  }
}
