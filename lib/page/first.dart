import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:play_ground/page/second.dart';

class First extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          'assets/apple.png',
          'assets/bitcoin.png',
          'assets/disney.png',
          'assets/facebook.png',
          'assets/meta.png',
          'assets/tesla.png',
        ].map((e) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(() => Second(), arguments: e);
              },
              child: ListTile(
                  tileColor: Colors.white54,
                  contentPadding: EdgeInsets.all(15),
                  leading: Hero(tag: e, child: Image.asset(e)),
                  title: Text(e.toString().substring(7))),
            ),
          );
        }).toList(),
      ),
    );
  }
}
