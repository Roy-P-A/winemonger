import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/login/login_controller.dart';
import 'package:winemonger/features/login/widgets/text_form_field.dart';
import 'package:winemonger/utils/theme/theme.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: SafeArea(
              child: Obx(
                () => Container(
                  padding: const EdgeInsets.all(27),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Hero(
                          tag: 'splash',
                          child: Image(
                              width: 219,
                              height: 219,
                              image: AssetImage(
                                  'assets/images/winemongerlogo.png')),
                        ),
                        const SizedBox(
                          height: 72,
                        ),
                        TextFormField1(
                          textEditingController: controller.usernameController,
                          text: 'Username',
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        TextFormField1(
                          textEditingController: controller.passwordController,
                          text: 'Password',
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Container(
                          child: (controller.message == "Login successfully")
                              ? Text(
                                  controller.message,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .successMessageColor,
                                  ),
                                )
                              : (controller.message == "")
                                  ? Container()
                                  : Text(
                                      controller.message,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .errorMessageColor,
                                      ),
                                    ),
                        ),
                        _submitButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget _submitButton(BuildContext context) {
    final LoginController _controller = Get.find();
    return Container(
      margin: const EdgeInsets.all(15),
      child: ElevatedButton(
        child: const Text(
          "Log in",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.buttonBackgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        ),
        onPressed: () {
          print('buttonpressed');
          _controller.onTappedSubmit();
        },
      ),
    );
  }
}
