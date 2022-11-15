import 'package:flutter/material.dart';
import 'package:get/get.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var data = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text("second"),),
      body: Column(
        children: [
          Text("${data["id"]}"),
          Text("${data["name"]}"),
          Text("${data["pin"]}"),
          Text("${data["status"]}"),
          Text("${data["address"]["no"]}"),
          Text("${data["address"]["street"]}"),
          Text("${data["address"]["area"]}"),
        ],
      ),
    );
  }
}
