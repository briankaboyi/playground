import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class Counter extends StatefulWidget{
//   @override
//   CounterState createState() => CounterState();
// }
//
// class CounterState extends State<Counter>{
//   var controller = CounterController();
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: Dialog(
//         child: Container(child: Column(mainAxisSize: MainAxisSize.min,children: [Text('${controller.countValue}'),ElevatedButton(onPressed: (){setState((){controller.countValue+=1;});}, child: Icon(Icons.add))],),),
//       ),
//     );
//   }
//
// }
//
class CounterController {
  RxInt countValue = 0.obs;
}

class Counter extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => Text('${controller.countValue.value}')),
              ElevatedButton(
                  onPressed: () {
                    controller.countValue.value += 1;

                  },
                  child: Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}
