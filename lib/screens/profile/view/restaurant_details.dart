import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../widgets/txtfiled_widget.dart';
import '../controller/profile_controller.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({Key? key}) : super(key: key);

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
                    Text("Contact Person Name"),
                    SizedBox(
                      height: 10,
                    ),
                    TxtFiledWidget(
                        hint: 'Person Name',
                        controller: controller.personNameController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      underline: Container(
                        color: Colors.grey,
                        height: 1.8,
                      ),
                      items: controller.restaurantList.map((String val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: new Text(val),
                        );
                      }).toList(),
                      hint: Text(
                        controller.selectedRestaurantName,
                      ),
                      onChanged: (value) {
                        controller.selectedTakAwayChange(value);
                      },
                    ),
                    TxtFiledWidget(
                        hint: 'Restaurant Address',
                        controller: controller.addressController,
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      underline: Container(
                        color: Colors.grey,
                        height: 1.8,
                      ),
                      items: controller.stateList.map((String val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: new Text(val),
                        );
                      }).toList(),
                      hint: Text(
                        controller.selectedState,
                      ),
                      onChanged: (value) {
                        controller.selectedTakAwayChange(value);
                      },
                    ),
                    TxtFiledWidget(
                        controller: controller.zipController,
                        inputType: TextInputType.text,
                        hint: 'Zip',
                        inputAction: TextInputAction.done),
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
