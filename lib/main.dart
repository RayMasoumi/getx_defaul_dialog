import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dialog Alert App'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Alert!',
                    middleText: 'Here\'s your dialog alert!',
                    middleTextStyle: const TextStyle(fontSize: 18.0),
                    // * cancel button:
                    textCancel: 'Cancel',
                    onCancel: () {
                      debugPrint('cancel pressed');
                    },
                    // * confirm button:
                    textConfirm: 'Confirm',
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      debugPrint('confirm pressed');
                    },
                    // * style:
                    buttonColor: CupertinoColors.activeBlue,
                    // * dialog can\'nt be dismissed by clicking on the screen:
                    barrierDismissible: false,
                  );
                },
                child: const Text(
                  'Show a Dialog Alert',
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
