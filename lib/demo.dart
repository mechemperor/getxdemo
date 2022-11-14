import 'package:flutter/material.dart';
import 'package:get/get.dart';

class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Model m = Get.put(Model());

    return Scaffold(

      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Column(
        children: [
          Obx(() => Text("${m.a.value}")),
          ElevatedButton(onPressed: () {
              m.increment();
          }, child: Text("Increment")),
          
          ElevatedButton(onPressed: () {
            m.decrement();
          }, child: Text("Decrement"))

        ],
      ),

    );
  }
}







class Model extends GetxController{

  RxInt a = 0.obs;
  RxString name = "Abc".obs;

  void increment()
  {
     a = a+1;
  }
    void decrement()
    {
      a = a-1;
    }

}