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
                    color: Color(0x99ffffff),
                  ),
                    child: Image.asset('./assets/disney.png',fit: BoxFit.contain,height: 200,).fadeIn()),
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
        // Positioned(
        //   bottom: 20,
        //
        //   right: 0,
        //   left: 0,
        //   child: button_widgets(
        //       widget: const text_widget(
        //         text: "Skip",
        //         color: 0xff696969,
        //         fontSize: 18,
        //         fontWeight: FontWeight.w500,
        //         textAlign: TextAlign.center,
        //         lineHeight: 1.5,
        //       ),
        //       height: 47,
        //       width: 90,
        //       radius: 5,
        //       color: 0xfffafafa,
        //       borderColor: 0xfffafafa)
        //       // .slide(offset: offset) ,
        // ),


      ],
    ));
  }
}
