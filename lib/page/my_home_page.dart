import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:play_ground/controllers/my_home_page_controller.dart';

class MyHomePage extends GetView<MyHomePageController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text('My Home Page')
      )
    );
  }

}