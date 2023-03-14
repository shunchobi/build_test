import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxTestWidget extends StatelessWidget {
  const ObxTestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var num = 0.obs;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: Obx(() => Text("$num")),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          num++;
        },
        icon: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
