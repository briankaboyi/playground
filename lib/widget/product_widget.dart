import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:play_ground/widget/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends GetView {
  final String title;
  final String img;
  final String yields;
  final String abr;

  const ProductWidget(
      {super.key,
      required this.title,
      required this.abr,
      required this.img,
      required this.yields});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 190,
        decoration: BoxDecoration(
            color: Color(0xffffffff), 
            boxShadow: const [
          BoxShadow(
              color: Color(0xff000000),
              blurRadius: 30,
              spreadRadius: -35,
              offset: Offset(0, 0))
        ],
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15.0, right: 15,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    img,
                    fit: BoxFit.contain,
                    width: 40,
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffafafa),
                      borderRadius: BorderRadius.circular(15)
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 4.0,right: 8.0,bottom: 4.0),
                      child: text_widget(
                        text: yields,
                        color: 0xff38B000,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.end,
                        lineHeight: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: text_widget(
                  text: title,
                  color: 0xff000000,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.start,
                  lineHeight: 1.5,
                ),

              ),
              text_widget(
                text: abr,
                color: 0xff000000,
                fontSize: 18,
                fontWeight: FontWeight.w200,
                textAlign: TextAlign.start,
                lineHeight: 1.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
