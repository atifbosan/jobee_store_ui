import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/screens/home/view/home_view.dart';
import 'package:jobee_store/screens/login/mobile/controller/mobile_controller.dart';
import 'package:jobee_store/widgets/textfiled_password.dart';

import '../../../../constant/colors.dart';
import '../../../../widgets/icon_button.dart';
import '../../../home/view/dashboard.dart';

class PasswordLogin extends StatelessWidget {
  const PasswordLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MobileController>(
        init: MobileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButtonWidget(
                    onPress: () {
                      Get.back();
                    },
                    icon: (Icons.arrow_back),
                    color: Colors.white,
                    iconColor: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "   Create Pssword",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFieldPassword(
                        controller: controller.passController,
                        isScure: controller.isObscure,
                        onTap: () =>
                            controller.togglePassword(controller.isObscure)),
                  )
                ],
              ),
            )),
            floatingActionButton: FloatingActionButton(
              onPressed: () => Get.to(() => Dashboard()),
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.white,
              ),
              backgroundColor: amberColor,
            ),
          );
        });
  }
}
