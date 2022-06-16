import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:jobee_store/widgets/txtfiled_widget.dart';

import '../../../constant/colors.dart';
import '../controller/profile_controller.dart';

class PersonalDetail extends StatelessWidget {
  const PersonalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int order = 25;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Container(
                  height: height * 0.28,
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.20,
                        color: amberColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () => Get.back(),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  )),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Container(
                                width: 70,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 150,
                          right: 150,
                          top: 90,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                    "assets/images/person_image.jpg"),
                              ),
                              Positioned(
                                  top: 75,
                                  left: 65,
                                  child: Icon(
                                    Icons.add_circle_outlined,
                                    color: amberColor,
                                  ))
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: width * 0.3,
                                child: TxtFiledWidget(
                                    controller: controller.orderController,
                                    inputType: TextInputType.text,
                                    inputAction: TextInputAction.next,
                                    hint: "First Name"),
                              ),
                              Container(
                                width: width * 0.3,
                                child: TxtFiledWidget(
                                    controller: controller.orderController,
                                    inputType: TextInputType.text,
                                    inputAction: TextInputAction.next,
                                    hint: "Last Name"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TxtFiledWidget(
                              controller: controller.orderController,
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                              hint: "Email Address"),
                          SizedBox(
                            height: 10,
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
                            textFieldController:
                                controller.phoneNumberController,
                            formatInput: false,
                            keyboardType: TextInputType.numberWithOptions(
                                signed: true, decimal: true),
                            onSaved: (PhoneNumber number) {
                              print('On Saved: $number');
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(
                              color: Colors.grey,
                              height: 1.8,
                            ),
                            items: controller.languageList.map((String val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: new Text(val),
                              );
                            }).toList(),
                            hint: Text(
                              controller.selectedLanguage,
                            ),
                            onChanged: (value) {
                              controller.selectedTakAwayChange(value);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(
                              color: Colors.grey,
                              height: 1.8,
                            ),
                            items: controller.currencyList.map((String val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: new Text(val),
                              );
                            }).toList(),
                            hint: Text(
                              controller.selectedCurrency,
                            ),
                            onChanged: (value) {
                              controller.selectedTakAwayChange(value);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TxtFiledWidget(
                              controller: controller.orderController,
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.done,
                              hint: "Service Description"),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 50,
                            width: 70,
                            child: RaisedButton(
                              onPressed: () {},
                              color: amberColor,
                              child: Text(
                                "Update",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
