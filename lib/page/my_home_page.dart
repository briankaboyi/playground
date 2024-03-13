import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:play_ground/controllers/my_home_page_controller.dart';
import 'package:play_ground/widget/form_field_widget.dart';

class MyHomePage extends GetView<MyHomePageController>{
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
            FormbuilderTextField(name: "name")
        ]
      ))
    );
  }

}