import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:localstorage/localstorage.dart';
import 'package:play_ground/widget/customDialog.dart';

class MyHomePageController {
  Map<String, dynamic> formInfo = <String, dynamic>{};
  final LocalStorage storage = LocalStorage('my_app');
  late final mystorage;
  final formKey = GlobalKey<FormBuilderState>();



  MyHomePageController() {
    initializeStorage();
    checkConnectionStatus();
    // constantConnectionStatus("false");
  }
  checkConnectionStatus() async {
    bool result = await InternetConnection().hasInternetAccess;
    print("checkConnectionStatus>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--$result");
    if (result == false) {
      Get.dialog(CustomDialog(
          actionMap: {
            'Ok': ()=>print('ok')
          },
          title: 'Connection error',
          description: "Check your internet connection and try again"));
      // constantConnectionStatus("false");
    }

    return result;
  }
  Widget responseWidget(attribute){
    return   FormBuilderField(
      name: attribute,
      builder: (FormFieldState<dynamic> field) {
        return IntlPhoneField(
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
          initialCountryCode: 'KE',
          onChanged: (phone) {
            if(phone.isValidNumber()){
              if(phone.countryCode == '+254'){
                field.didChange('${phone.countryCode}${phone.number.substring(1)}');
              }
              field.didChange(phone.completeNumber);
            }
          },
          validator: (value) {
            if (value == null || value.completeNumber.isEmpty) {
              return 'Phone number is required';
            }
            if (!value.isValidNumber()) {
              return 'Invalid phone number for the selected country';
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
        );
      },
    );

  }
  // constantConnectionStatus(cancel){
  //   if (Get.isDialogOpen!=null && Get.isDialogOpen == true) {
  //     constantConnectionStatus(true);
  //   }
  //   final listener = InternetConnection().onStatusChange.listen((InternetStatus status) {
  //     switch (status) {
  //       case InternetStatus.connected:
  //       print('connected >>>>>>>>>>>>><<<<<<<<<<<<<<<< connected');
  //       Get.dialog(CustomDialog(
  //           actionMap: {
  //             'Ok': () => print('ok'
  //             )
  //           },
  //           title: 'Connection Success',
  //           description: "internet connection available"));
  //         break;
  //       case InternetStatus.disconnected:
  //         print('connected >>>>>>>>>>>>><<<<<<<<<<<<<<<NOT< connected');
  //
  //         Get.dialog(CustomDialog(
  //             actionMap: {
  //               'Ok': () =>print('ok'
  //               )
  //             },
  //             title: 'Connection error from checker',
  //             description: "Check your internet connection and try again"));
  //         break;
  //     }
  //   });
  //   if(cancel==true){
  //     listener.cancel();
  //   }
  // }

  initializeStorage() async {
    await storage.ready;
    mystorage = storage.getItem('myitems') ?? [];
  }

  addItems(key, value) async {
    var data = await storage.getItem(key);
    var items = json.decode(data);
    items.add(value);
    var encodeddata = json.encode(items);
    storage.setItem(key, encodeddata);
  }

  List<Map<String, dynamic>> items = [
    {
      'name': 'Smartphone',
      'brand': 'Samsung',
      'price': 799.99,
      'color': 'Black'
    },
    {'name': 'Laptop', 'brand': 'Dell', 'price': 1299.99, 'color': 'Silver'},
    {'name': 'Headphones', 'brand': 'Sony', 'price': 149.99, 'color': 'Black'},
    {
      'name': 'Tablet',
      'brand': 'Apple',
      'price': 599.99,
      'color': 'Space Gray'
    },
    {'name': 'Smartwatch', 'brand': 'Fitbit', 'price': 199.99, 'color': 'Blue'},
    {'name': 'Camera', 'brand': 'Canon', 'price': 499.99, 'color': 'Black'},
    {
      'name': 'Gaming Console',
      'brand': 'Microsoft',
      'price': 399.99,
      'color': 'White'
    },
    {
      'name': 'Wireless Speaker',
      'brand': 'Bose',
      'price': 299.99,
      'color': 'Silver'
    },
    {
      'name': 'Fitness Tracker',
      'brand': 'Garmin',
      'price': 149.99,
      'color': 'Black'
    },
    {
      'name': 'E-book Reader',
      'brand': 'Amazon',
      'price': 119.99,
      'color': 'White'
    },
    {'name': 'Drone', 'brand': 'DJI', 'price': 999.99, 'color': 'Gray'},
    {
      'name': 'Smart Speaker',
      'brand': 'Google',
      'price': 149.99,
      'color': 'Charcoal'
    }
  ];
}
