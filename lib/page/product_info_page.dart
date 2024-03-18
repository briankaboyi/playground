import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:play_ground/widget/text_widget.dart';

class ProductInfoPage extends GetView{

  @override
  Widget build(BuildContext context) {
final productInfo = Get.arguments;
print("********************************$productInfo");
    return Scaffold(

      body: Center(child: text_widget(text: productInfo['title'], color: 0xff000000, fontSize: 18, fontWeight: FontWeight.w500, textAlign: TextAlign.center)),
    );
  }

}