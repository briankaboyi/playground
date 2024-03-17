import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_ground/controllers/mydata.dart';
import 'package:play_ground/widget/button_widget.dart';
import 'package:play_ground/widget/text_widget.dart';




class Products extends GetView<myDataController> {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_rounded,size: 18,),
        title:text_widget(
          text: "Products",
          color: 0xff000000,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.start,
          lineHeight: 1.5,
        ),
        bottom: PreferredSize(preferredSize:Size(Get.width, 40), child: SizedBox()),
      ),


      body: Column(
        children: controller.getRecommendedProducts(controller.companies[ "recommended"])

        ,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: GestureDetector(
          onTap: (){
            print("Add a page to navigate to");
          },
          child:button_widgets(
              widget: const text_widget(
                text: "Skip",
                color: 0xff696969,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
                lineHeight: 1.5,
              ),
              height: 47,
              width: Get.width,
              radius: 5,
              color: 0xfffafafa,
              borderColor: 0xfffafafa) ,
        ),
      ),
    );
  }
}