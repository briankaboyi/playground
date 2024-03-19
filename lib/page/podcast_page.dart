import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:play_ground/widget/avatar_widget.dart';
import 'package:play_ground/widget/text_widget.dart';

class PodcastPage extends GetView{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       bottom: PreferredSize(preferredSize: Size(Get.width, 200), child: Container(
         decoration: BoxDecoration(color:Colors.black26,
             borderRadius: BorderRadius.circular(15)),
         child: Column(
           children: [
             ListTile(
               title:  text_widget(
                   text: 'Podcast name',
                   color: 0xff000000,
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                   textAlign: TextAlign.start),
               subtitle: text_widget(
                   text: '@space_ee',
                   color: 0xff000000,
                   fontSize: 13,
                   fontWeight: FontWeight.w500,
                   textAlign: TextAlign.start),
               trailing: Container(
                 decoration: BoxDecoration(
                   color: Colors.black26,
                   borderRadius: BorderRadius.circular(15)

                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 15.0, right: 15.0,top: 8,bottom: 8),
                   child: text_widget(
                       text: 'Live',
                       color: 0xffffffff,
                       fontSize: 18,
                       fontWeight: FontWeight.w500,
                       textAlign: TextAlign.center),
                 ),
               ),
             ),
             Row(
               children: [
                 {'name': 'Netflix','subtitle': 'Entertainment','img': './assets/netflix.png'},
                 {'name': 'Disney','subtitle': 'Entertainment','img': './assets/disney.png'},
               ].map((e){
                 return AvatarWidget(
                   name: e['name']??'',
                   subtitle: e['subtitle']??'',
                   img: e['img']??'',
                 );;
               }).toList(),
             )

           ],
         ),
       )),
     ),

   );
  }

}