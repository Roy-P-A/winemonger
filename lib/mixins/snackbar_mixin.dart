import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

mixin SnackbarMixin on GetxController {
  showErrorSnackbar({required String title, required String message}) {
    // Get.snackbar(
    //   title,
    //   message,
    //   backgroundColor: Colors.red[400],
    //   colorText: Colors.white,
    //   snackPosition: SnackPosition.BOTTOM,
    //   duration: Duration(seconds: 5),
    //   borderRadius: 5,
    //   isDismissible: true,
    // );

    Flushbar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.red,
      margin: const EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(10),
      isDismissible: true,
    ).show(Get.context!);
  }

  showSuccessSnackbar({required String title, required String message}) {
    // Get.snackbar(
    //   title,
    //   message,
    //   backgroundColor: Colors.green[200],
    //   colorText: Colors.white,
    //   snackPosition: SnackPosition.BOTTOM,
    //   duration: Duration(seconds: 5),
    //   borderRadius: 5,
    // );

    Flushbar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.green,
      margin: const EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(10),
      isDismissible: true,
    ).show(Get.context!);
  }
}
