import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomDialog extends GetView {
  final Map<String, Function> actionMap;
  final String title;
  final String description;

  CustomDialog(
      {super.key,
      required this.actionMap,
      required this.title,
      required this.description});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.black,
        actionsAlignment: MainAxisAlignment.spaceBetween,
        title: Text(
          textAlign: TextAlign.start,
          title,
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        content: Text(
          textAlign: TextAlign.start,
          description,
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          ButtonBar(
            alignment: actionMap.length != 1
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            buttonMinWidth: actionMap.length != 1 ? null : 100,
            children: actionMap.entries.map((e) {
              return TextButton(
                onPressed: () {
                  e.value();
                  print(actionMap.length);
                  Get.back();
                },
                child: Text(
                  textAlign: TextAlign.start,
                  e.key,
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, minimumSize: Size(100, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            }).toList(),
          )
        ]);
  }
}

Map<String, dynamic> dummyMap = {
  'Ok': () => {print('ok')},
  'Cancel': () => {print('cancel')},
};
