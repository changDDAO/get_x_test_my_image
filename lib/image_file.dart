import 'dart:convert';
import 'package:get/get.dart';

List<ImageFile> imageFileFromJson(String str) =>
    List<ImageFile>.from(json.decode(str).map((x) => ImageFile.fromJson(x)));

String imageFileToJson(List<ImageFile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageFile {
  ImageFile({
    required this.id,
    required this.savedPath,
    required this.imageLink,
  });

  int id;
  String savedPath;
  String imageLink;


  factory ImageFile.fromJson(Map<String, dynamic> json) =>
      ImageFile(
        id: json["id"],
        savedPath: json["savedPath"],
        imageLink: json["imageLink"],
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "savedPath": savedPath,
        "imageLink": imageLink,
      };


}