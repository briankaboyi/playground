import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


class Second extends GetView{
  var args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[Container(
          height: 200,
          child: Hero(tag: args,child: Image.asset(args)),
        ),
          Text(args.toString().substring(7))
        ],

      ),
    );
  }

}