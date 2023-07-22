import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller.dart';
import 'image_tile.dart';
class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('get_x image_test'),
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.view_list_rounded)
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Obx(()=> GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index){
              return ImageTile(
                controller.imageList[index],
              );
            },
            itemCount: controller.imageList.length,
          ),
          ),
        ),

      ),
    );
  }
}
