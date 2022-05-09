import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/utils/theme/theme.dart';

class FloatingActionButton1 extends StatelessWidget {
  const FloatingActionButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // isExtended: true,
      child: const Tooltip(
        message: 'create order',
        child: Icon(
          Icons.add,
          size: 49,
        ),
      ),
      backgroundColor:
          Theme.of(context).colorScheme.floatingbuttonbackgroundColor,
      onPressed: () {
        Get.toNamed("/createorders");
      },
    );
  }
}
