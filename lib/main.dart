import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/demo.dart';
import 'package:getxdemo/first.dart';

void main() {
  runApp(GetMaterialApp(home:third(),));
}



class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

  Map m = {
    "id": 1,
    "name": "AAA",
    "pin": 395,
    "status": true,
    "address": {
      "no": 101,
      "street": 2,
      "area": "Yogichowk",
      "latlog": {"lat": "12/104", "log": "74/102"}
    }
  };


  List l = [1,2,3,4,5];

  models? model;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = models.fromJson(m);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
            
          Text("${m['address']['latlog']['lat']}"),
          Text("${model!.address!.latlog!.lat}"),
          ElevatedButton(onPressed: () {

            setState(() {
              m['address']['latlog']['lat'] = "00/00";

              l[1] =4 ;

            });

          }, child: Text("Apply"))
        ],
      ),
    )
    );
  }
}

class models {
  int? id;
  String? name;
  int? pin;
  bool? status;
  Address? address;

  models({this.id, this.name, this.pin, this.status, this.address});

  models.fromJson(Map, json) {
    id = json['id'];
    name = json['name'];
    pin = json['pin'];
    status = json['status'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['pin'] = this.pin;
    data['status'] = this.status;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    return data;
  }
}

class Address {
  int? no;
  int? street;
  String? area;
  Latlog? latlog;

  Address({this.no, this.street, this.area, this.latlog});

  Address.fromJson(Map<String, dynamic> json) {
    no = json['no'];
    street = json['street'];
    area = json['area'];
    latlog =
    json['latlog'] != null ? new Latlog.fromJson(json['latlog']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['no'] = this.no;
    data['street'] = this.street;
    data['area'] = this.area;
    if (this.latlog != null) {
      data['latlog'] = this.latlog!.toJson();
    }
    return data;
  }
}

class Latlog {
  String? lat;
  String? log;

  Latlog({this.lat, this.log});

  Latlog.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    log = json['log'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['log'] = this.log;
    return data;
  }
}
