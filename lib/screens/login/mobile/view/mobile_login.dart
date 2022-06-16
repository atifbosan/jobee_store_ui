import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:jobee_store/screens/login/mobile/controller/mobile_controller.dart';
import 'package:jobee_store/screens/login/mobile/view/password_login.dart';
import 'package:jobee_store/widgets/icon_button.dart';
import '../../../../constant/colors.dart';

class MobileLogin extends StatelessWidget {
  MobileLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MobileController>(
        init: MobileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
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
                    "   Enter your mobile number",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.DROPDOWN,
                    ),
                    inputBorder: UnderlineInputBorder(),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: controller.number,
                    textFieldController: controller.controller,
                    formatInput: false,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or choose other login options",
                        style: TextStyle(
                            color: amberColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          color: amberColor,
                          size: 40,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
            floatingActionButton: FloatingActionButton(
              onPressed: () => Get.to(() => PasswordLogin()),
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
