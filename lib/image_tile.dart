import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'image_file.dart';


class ImageTile extends StatelessWidget {
  final ImageFile imageFile;
  ImageTile(this.imageFile);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Row(
            children: [


              Container(
                  height: 75,
                  width: 100,
                  color: Colors.white,
                  child: Image.network(imageFile.imageLink,
                  fit: BoxFit.fill),
                ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('image id : ${imageFile.id}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w400
                  ),),
                  Text('image saved_path : ${imageFile.savedPath}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w400
                    ),),
                  Text('image link : ${imageFile.imageLink}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w400
                    ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}