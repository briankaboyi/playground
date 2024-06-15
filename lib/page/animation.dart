import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:play_ground/widget/button_widget.dart';
import 'package:play_ground/widget/text_widget.dart';

class AnimationPage extends GetView {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [
        AnimatedContainer(
          duration: Duration(seconds: 30),
          child: Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset('./assets/starwars.jpg', fit: BoxFit.cover)),
        ),
        AppBar(backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 270,

          right: 0,
          left: 0,
          child: Align(alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Color(0xffffffff),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Image.asset('./assets/disney.png',fit: BoxFit.contain,height: 150,),
                    )),
                RichText(text: TextSpan(style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold), children: <TextSpan>[
                  TextSpan(
                    text: '"',style: TextStyle(

                      fontSize: 40,
                      fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: 'The Empire Strikes Back',style: TextStyle(

                      fontSize: 20,
                      fontWeight: FontWeight.w400)
                  ),
                  TextSpan(
                    text: '"',style: TextStyle(

                      fontSize: 40,
                      fontWeight: FontWeight.bold)
                  ),
                ]))
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: text_widget(
                text: "Skip",
                color: 0xff000000,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
                lineHeight: 1.5,
              ),
            ),
          ),
        ),


      ],
    ));
  }
}
