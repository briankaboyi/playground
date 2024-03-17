import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:play_ground/controllers/my_home_page_controller.dart';
import 'package:play_ground/widget/form_field_widget.dart';

class MyHomePage extends GetView<MyHomePageController>{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(bottom:PreferredSize(preferredSize: Size.fromHeight(100), child: SizedBox(),) ,),
      body: FormBuilder(
        key: controller.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            FormbuilderTextField(name: "name"),
            FormbuilderTextField(name: "data"),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: (){
                  // Get.bottomSheet(Container(child: Text("data"),));
                  if(controller.formKey.currentState!.validate()){
                    print("<<<<<<<<<<<<<<<${controller.formKey.currentState!.value}");
                    // controller.formInfo = controller.formKey.currentState!.value;
                  }
                  
                },
                child: Container(
                  color: Colors.cyan,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Submit',style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                  )),
                ),
              ),
            )
        ]
      ))
    );
  }

}