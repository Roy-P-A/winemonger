import 'package:flutter/material.dart';
import 'package:winemonger/features/drawer/drawer.dart';
import 'package:winemonger/features/order/order_detailscreen/order_detail.dart';
import 'package:winemonger/utils/theme/theme_constants.dart';
import '../../widgets/appbar.dart';
import '../../widgets/bottom_app_bar.dart';
import '../../widgets/floating_action_button.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.backgroundColor,
        appBar: const CustomAppBar(
          title: 'Order Info',
        ),
        drawer: Drawer1(),
        body: OrderDetail(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingActionButton1(),
        bottomNavigationBar: const BottomAppBar1());
  }
}
