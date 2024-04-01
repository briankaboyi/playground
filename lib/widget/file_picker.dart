import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:play_ground/dio_functions.dart';
import 'package:play_ground/widget/text_widget.dart';

class FilePickerWidget extends GetView {
  RxString fileName = ''.obs;
  RxString fileSize = ''.obs;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () async {
            // await DioFunctions().pickKraDocument().then((v){
            //   image.value = v.path;
            //   imagesPayload.addAll({
            //     attributes:image.value
            //   });
            // });
            await DioFunctions().pickFile().then((v){
              fileName.value = v.name;
              fileSize.value = v.size.toString();

              print('file ${v}');
              print('file size ${v.size}');
              print('file name ${v.name}');
              print('file path ${v.path!}');
            });

          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFa0a0a0), // color of the shadow
                      spreadRadius: -5, // spread radius
                      blurRadius: 15, // blur radius
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16, left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: text_widget(
                          text: "Upload KRA document",
                          color: 0xff000000,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                          lineHeight: 1.5,
                        ),
                      ),
                      SizedBox(
                        width: Get.width,
                        child: DottedBorder(
                          color: Color(0xff707070),
                          radius: Radius.circular(10),
                          strokeCap: StrokeCap.butt,
                          dashPattern: [6],
                          strokeWidth: 1,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Obx(() => Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: fileName.value != ''
                                        ? text_widget(
                                      text: fileName.value,
                                      color: 0xff000000,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      textAlign: TextAlign.center,
                                      lineHeight: 1.5,
                                    )
                                        : SvgPicture.asset(
                                        './assets/upload_icon.svg'),
                                  ),
                                ),
                                Center(
                                    child: text_widget(
                                      text: "Format PNG, JPEG",
                                      color: 0xff000000,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      textAlign: TextAlign.center,
                                      lineHeight: 1.5,
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: text_widget(
                                      text: "Browse Files",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: 0xFF006ADC,
                                      textAlign: TextAlign.start),
                                ),
                              ],
                            )),
                            // child: image.value.isEmpty?Column(
                            //   crossAxisAlignment: CrossAxisAlignment.center,
                            //   children: [
                            //     Center(
                            //       child: Padding(
                            //         padding: EdgeInsets.all(8.0),
                            //         child: Icon(Icons.upload_file),
                            //       ),
                            //     ),
                            //     Center(
                            //         child: text_widget(
                            //           text: "Format PNG, JPEG",
                            //           color: 0xff000000,
                            //           fontSize: 14,
                            //           fontWeight: FontWeight.w500,
                            //           textAlign: TextAlign.center,
                            //           lineHeight: 1.5,
                            //         )),
                            //     SizedBox(
                            //       height: 10,
                            //     ),
                            //     Center(
                            //       child: text_widget(
                            //           text: "Browse Files",
                            //           fontSize: 12,
                            //           fontWeight: FontWeight.w600,
                            //           color: 0xFF006ADC,
                            //           textAlign: TextAlign.start),
                            //     ),
                            //   ],
                            // ):
                            // Image.file(File(imagesPayload[attributes])),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
