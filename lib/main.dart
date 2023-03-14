import 'package:build_test/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DependencyInjention.dart';
import 'GetController.dart';
import 'GetView.dart';
import 'obx.dart';

///
/// //Check in what platform the app is running
// GetPlatform.isAndroid
// GetPlatform.isIOS
// GetPlatform.isMacOS
// GetPlatform.isWindows
// GetPlatform.isLinux
// GetPlatform.isFuchsia

// //Check the device type
// GetPlatform.isMobile
// GetPlatform.isDesktop

// Equivalent to : MediaQuery.of(context).size.height,
// but immutable.
// Get.height
// Get.width

// // Gives the current context of the Navigator.
// Get.context
///

void main() {
  runApp(
    ///
    /// GetMaterialApp will create routes, inject them,
    /// inject translations, inject everything you need for route navigation
    /// GetMaterialApp is necessary for routes, snackbars,
    /// internationalization, bottomSheets, dialogs, and high-level apis
    ///
    GetMaterialApp(
      /// GetControllerWidget()
      /// ObxTestWidget()
      home: const Main(),
      initialRoute: '/',
      initialBinding: HomeBinding(), // 依存関係注入
      getPages: [
        GetPage(name: '/', page: () => const Main()),
        GetPage(name: '/one', page: () => const One()),
        GetPage(
          name: '/two',
          page: () => const Two(),
          transition: Transition.upToDown,
          transitionDuration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
        ),
        GetPage(
          name: '/three',
          page: () => const Three(),
          popGesture: true,
        ),
        GetPage(name: '/getController', page: () => const GetControllerWidget()),
        GetPage(name: '/obx', page: () => const ObxTestWidget()),
        GetPage(name: '/getView', page: () => GetViewTest()),
        GetPage(name: '/di', page: () => DependencyInjention()),
      ],
    ),
  );
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/getController'),
              child: const Text('to GetControllerWidget'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/obx'),
              child: const Text('to ObxTestWidget'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/one'),
              child: const Text('to One'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/getView'),
              child: const Text('to GetViewTest'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/di'),
              child: const Text('to DependencyInjention'),
            ),
          ],
        ),
      ),
    );
  }
}
