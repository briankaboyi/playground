import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LocalizationHowe extends GetView{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children:[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               MaterialButton(onPressed: (){Get.updateLocale(Locale('en','US'));}, child: Text('english',style: TextStyle(fontSize: 20),),),
               MaterialButton(onPressed: (){Get.updateLocale(Locale('fr','FR'));}, child: Text('french'.tr,style: TextStyle(fontSize: 20),),),
               MaterialButton(onPressed: (){Get.updateLocale(Locale('sw','KE'));}, child: Text("swahili",style: TextStyle(fontSize: 20),),)
             ],
           ),
           Text('name'.tr,style: TextStyle(fontSize: 60),),
           Text('proffesion'.tr,style: TextStyle(fontSize: 60),),
           Text('height'.tr,style: TextStyle(fontSize: 60),),
         ]
       )
     ),
   );
  }

}
