
import 'package:flutter/cupertino.dart';
import 'package:play_ground/widget/product_widget.dart';
import 'package:play_ground/widget/text_widget.dart';

class  myDataController{
  Map<String,dynamic> companies = {
    "recommended": {
      "Tech": [
        {
          "productId": 101,
          "title": "Google",
          "subtitle": "GBF",
          "yields": "+9.75%",
          "img": "./assets/google.png"
        },
        {
          "productId": 102,
          "title": "Bitcoin",
          "subtitle": "BBF",
          "yields": "+8.20%",
          "img": "./assets/bitcoin.png"
        },
        {
          "productId": 103,
          "title": "Figma",
          "subtitle": "FBF",
          "yields": "+10.50%",
          "img": "./assets/figma.png"
        },
        {
          "productId": 104,
          "title": "Netflix",
          "subtitle": "NBF",
          "yields": "+7.85%",
          "img": "./assets/netflix.png"
        }
      ],
      "Financial": [
        {
          "productId": 105,
          "title": "Amazon",
          "subtitle": "AEF",
          "yields": "+12.15%",
          "img": "./assets/amazon.png"
        },
        {
          "productId": 106,
          "title": "Apple",
          "subtitle": "AEF",
          "yields": "+11.00%",
          "img": "./assets/apple.png"
        },
        {
          "productId": 107,
          "title": "Tesla",
          "subtitle": "TEF",
          "yields": "+13.25%",
          "img": "./assets/tesla.png"
        },
        {
          "productId": 108,
          "title": "Microsoft",
          "subtitle": "MEF",
          "yields": "+10.75%",
          "img": "./assets/microsoft.png"
        }
      ],
      "Media": [
        {
          "productId": 109,
          "title": "Facebook",
          "subtitle": "FBMMF",
          "yields": "+6.50%",
          "img": "./assets/facebook.png"
        },
        {
          "productId": 111,
          "title": "Meta",
          "subtitle": "MMMF",
          "yields": "+7.00%",
          "img": "./assets/meta.png"
        },
        {
          "productId": 112,
          "title": "Disney",
          "subtitle": "DMMF",
          "yields": "+5.25%",
          "img": "./assets/disney.png"
        }
      ]
    }
  }

  ;

  List<Widget> getRecommendedProducts(Map<String,dynamic> productsMap){
    var products = companies[ "recommended"];
    List<Widget> r = [];

    r.addAll(getProductsByCategory(products));
    return r;
  }
  getProductsByCategory(Map<String,dynamic> e){
    List<Widget> r = [];
    e.forEach((key, value) {
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$key");
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$value");
      r.add(
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children:[
                  Padding(
                    padding: const EdgeInsets.only(left:15,bottom: 10.0),
                    child: text_widget(
                      text: key,
                      color: 0xff000000,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      lineHeight: 1.5,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,bottom: 15),
                      child: Row(
                        children: value.map<Widget>((e){
                          print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$e");
                          return ProductWidget(title: e["title"]?? '', yields: e["yields"]?? '', img: e["img"] ?? '',abr: e["subtitle"] ?? '');
                        }).toList(),
                      ),
                    ),
                  )
                ]),
          )
      );



    });
    return r;
  }
}