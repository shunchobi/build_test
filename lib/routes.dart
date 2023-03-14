import 'package:build_test/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

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
        child: TextButton(
          onPressed: () => Get.toNamed(
            '/two',
            arguments: {
              "argOne": "Hello",
              "argTwo": "World",
            },
          ),
          child: const Text('to two'),
        ),
      ),
    );
  }
}

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('${Get.arguments['argOne']}, ${Get.arguments['argTwo']}'),
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
        child: TextButton(
          onPressed: () => Get.toNamed(
            '/three',
            arguments: {
              "argOne": "Hey",
              "argTwo": "Yo",
            },
            
          ),
          child: const Text('to three'),
        ),
      ),
    );
  }
}

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('${Get.arguments['argOne']}, ${Get.arguments['argTwo']}'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.offAll(const Main()),
              child: const Text('Get.offAll(const Main())'),
            ),
            TextButton(
              onPressed: () => Get.offNamed('/one'),
              child: const Text('Get.offNamed(\'one\')'),
            ),
            TextButton(
              onPressed: () => Get.off(const Two()),
              child: const Text('Get.off(const Tow())'),
            ),
            TextButton(
              onPressed: () => Get.offAll(const Two()),
              child: const Text('Get.offAll(const Two())'),
            ),
          ],
        ),
      ),
    );
  }
}
