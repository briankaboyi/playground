import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:play_ground/widget/text_widget.dart';

class AvatarWidget extends GetView{
  final String name;
  final String subtitle;
  final String img;
  AvatarWidget({super.key,required this.name ,required this.subtitle,required this.img});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Column(
        children: [
          CircleAvatar(radius: 30,foregroundImage:AssetImage(img)),
          text_widget(
            text: name,
            color: 0xff000000,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            lineHeight: 1.5,
          ),text_widget(
            text: subtitle,
            color: 0xff000000,
            fontSize: 12,
            fontWeight: FontWeight.w300,
            textAlign: TextAlign.center,
            lineHeight: 1.5,
          ),
        ],
      ),
    );
  }

}