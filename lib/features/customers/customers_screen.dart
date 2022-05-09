import 'package:flutter/material.dart';
import 'package:winemonger/features/drawer/drawer.dart';
import 'package:winemonger/utils/theme/theme.dart';
import '../widgets/appbar.dart';
import '../widgets/bottom_app_bar.dart';
import '../widgets/floating_action_button.dart';

class CustomerssScreen extends StatelessWidget {
  const CustomerssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.backgroundColor,
      appBar: const CustomAppBar(
        title: 'Customers',
      ),
      drawer: Drawer1(),
      body: SafeArea(
        child: Container(
          child: Center(child: Text('Coming soon')),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButton1(),
      bottomNavigationBar: const BottomAppBar1(),
    );
  }
}
