import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero_animation/hero_animation.dart';

class LifeCyclePage extends StatefulWidget{
  @override
  LifeCyclePageState createState() => LifeCyclePageState();
}
class LifeCyclePageState extends State<LifeCyclePage>{
  String statefulText = "initial state";
  Alignment alignment = Alignment.centerLeft;
  Widget build(BuildContext context){
    return Scaffold(
      body:   Positioned.fill(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: HeroAnimationScene(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if(alignment == Alignment.centerRight){
                      alignment =Alignment.centerLeft;
                    }else{
                      alignment = Alignment.centerRight;
                    }
                  });
                },
                child: Align(
                  alignment: alignment,
                  child: HeroAnimation.child(
                    tag: 'tag_0',
                    child: const Text('SOME TEXT'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ) ,
    )

          ;
  }
}
