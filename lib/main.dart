import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_ground/controllers/my_home_page_controller.dart';
import 'package:play_ground/controllers/mydata.dart';
import 'package:play_ground/page/counter_page.dart';
import 'package:play_ground/page/overlay.dart';
import 'package:play_ground/page/podcast_page.dart';

import 'page/animation.dart';
import 'page/recommended_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(MyHomePageController());
    Get.put(myDataController());
    Get.put(CounterController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:  PodcastPage(),
      // home:  Counter(),
      home:  OverlayPage(),
    );
  }
}
//TODO : SHIMMER, BLUR/GLASSMORPHISM , ACCESS LOCAL FILES, UPLOADS, EXPLICiT ANIMATIONS, STATEFUL WIDGET LIFECYCLE,SCREEN UTIL


