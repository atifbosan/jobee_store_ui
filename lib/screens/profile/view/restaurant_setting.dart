import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/constant/colors.dart';
import 'package:jobee_store/widgets/txtfiled_widget.dart';

import '../controller/profile_controller.dart';

class RestaurantSetting extends StatelessWidget {
  RestaurantSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: ((controller) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              title: Text("Restaurant Setting"),
              centerTitle: true,
              elevation: 0,
            ),
            body: SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TxtFiledWidget(
                        hint: 'Order preparation Time',
                        controller: controller.orderController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next),
                    SizedBox(
                      height: 15,
                    ),
                    TxtFiledWidget(
                        hint: 'Maximum Items',
                        controller: controller.maximumController,
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next),
                    SizedBox(
                      height: 15,
                    ),
                    TxtFiledWidget(
                        controller: controller.MinimumController,
                        inputType: TextInputType.number,
                        hint: 'Minimum Order Price',
                        inputAction: TextInputAction.done),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Take Away"),
                    DropdownButton<String>(
                      isExpanded: true,
                      underline: Container(
                        color: Colors.grey,
                        height: 2,
                      ),
                      items: controller.takAwayList.map((String val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: new Text(val),
                        );
                      }).toList(),
                      hint: Text(
                        controller.takAway,
                      ),
                      onChanged: (value) {
                        controller.selectedTakAwayChange(value);
                      },
                    ),
                    SizedBox(
                      height: 110,
                    ),
                    Center(
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: RaisedButton(
                          color: amberColor,
                          onPressed: () {},
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
          );
        }));
  }
}
