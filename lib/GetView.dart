import 'package:build_test/DependencyInjention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwesomeController extends GetxController {
  final String title = 'My Awesome View';
}

// GetViewは依存オブジェクトのgetterを内部に持つStatelessWidgetです。
// 依存オブジェクトが1つであれば、StatelessWidgetの代わりにGetViewを使って
// Get.findを省くことができます。
class GetViewTest extends GetView<DiController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(controller.num), // just call `controller.something`
    );
  }
}