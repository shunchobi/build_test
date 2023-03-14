import 'package:flutter/material.dart';
import 'package:get/get.dart';

///
/// 依存関係注入
///
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<DiController>(DiControllerOne());
    // Get.put<DiControllerTwo>(DiControllerTwo());
    // Get.put<DiControllerThree>(DiControllerThree());
  }
}

class DiController {
  var num;
  increment() => num++;
}

class DiControllerOne extends GetxController implements DiController {
  @override
  var num = 1.obs;
  @override
  increment() => num++;
}

class DiControllerTwo extends GetxController implements DiController {
  @override
  var num = 2.obs;
  @override
  increment() => num++;
}

class DiControllerThree extends GetxController implements DiController {
  @override
  var num = 3.obs;
  @override
  increment() => num++;
}

class DependencyInjention extends StatelessWidget {
  DependencyInjention({Key? key}) : super(key: key);
  DiController diController = Get.find();

  @override
  Widget build(BuildContext context) {
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
        child: Text('${diController.num}'),
      ),
    );
  }
}
