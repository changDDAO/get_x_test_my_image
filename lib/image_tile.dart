import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'image_file.dart';


class ImageTile extends StatelessWidget {
  final ImageFile imageFile;
  ImageTile(this.imageFile);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        height: 200,
        width: 200,
        child: Image.network(imageFile.imageLink,
        fit: BoxFit.fill,),

        ),

      ),
    );
  }
}