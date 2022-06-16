import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/widgets/txtfiled_widget.dart';

import '../controller/profile_controller.dart';

class BankView extends StatelessWidget {
  const BankView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: ((controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Bank Details"),
              centerTitle: true,
              elevation: 0,
            ),
            body: SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TxtFiledWidget(
                        controller: controller.emailController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next,
                        hint: "Payment Email"),
                    SizedBox(
                      height: 10,
                    ),
                    TxtFiledWidget(
                        controller: controller.emailController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next,
                        hint: "Bank Holder Name"),
                    SizedBox(
                      height: 10,
                    ),
                    TxtFiledWidget(
                        controller: controller.emailController,
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                        hint: "Account Number"),
                    SizedBox(
                      height: 10,
                    ),
                    TxtFiledWidget(
                        controller: controller.emailController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next,
                        hint: "Bank Holder Name"),
                    SizedBox(
                      height: 10,
                    ),
                    TxtFiledWidget(
                        controller: controller.emailController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next,
                        hint: "Bank Location"),
                    SizedBox(
                      height: 10,
                    ),
                    TxtFiledWidget(
                        controller: controller.emailController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.done,
                        hint: "BIC/SWIFT CODE"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )),
          );
        }));
  }
}
