import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'image_file.dart';
class Services{
  static var client = http.Client();
  static Future<List<ImageFile>?> fetchImageFiles() async{
    var response = await client.get(Uri.parse("http://localhost:8080/api/images"));
    if(response.statusCode==200) {
      var jsonData = response.body;
      debugPrint(jsonData);
      return imageFileFromJson(jsonData);
    }else {
      return null;
    }



  }
}