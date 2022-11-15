import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/second.dart';

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
    ),
    body: Column(
      children: [
        ElevatedButton(onPressed: () {
          Get.to(second(),arguments: {
            "id":1,
            "name":"AAA",
            "pin":394,
            "status":true,
            "address":{
              "no":101,
              "street":"yogichok",
              "area":"varachha"
            }
          });
          Get.off(second());
        }, child:Text("Send")),
      ],
    ),


    );
  }
}
