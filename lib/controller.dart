import 'package:flutter/material.dart';
import 'package:get_x/image_file.dart';
import 'package:get/get.dart';
import 'services.dart';

class Controller extends GetxController{
 var imageList = <ImageFile>[].obs;

 @override
  void onInit() {
  super.onInit();
  fetchData();
  }
  void fetchData()async{
   var images = await Services.fetchImageFiles();
   if(images!=null) {
     imageList.value=images;
   }
  }
}