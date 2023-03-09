import 'package:business_cpu/app/data/constants.dart';
import 'package:business_cpu/app/data/widgets.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);

  final signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SignUpView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              TextFormWidget(
                  dropDown: false,
                  titleText: "Name",
                  textController: controller.nameController),
              TextFormWidget(
                dropDown: false,
                titleText: "Email",
                textController: controller.emailController,
              ),
              MyDateTimePicker(
                title: 'DOB',
                initialDate: controller.selectedDate,
                onChanged: (value) {
                  controller.selectedDate = value;
                  print(controller.selectedDate);
                },
                suffixIcon: Icon(Icons.event),
              ),
              TextFormWidget(
                dropDown: false,
                titleText: "Password",
                textController: controller.passwordController,
              ),
              TextFormWidget(
                dropDown: false,
                titleText: "Confirm Password",
                textController: controller.cnfPasswordController,
              ),
              Container(
                  width: Constants.width,
                  child:
                      ElevatedButton(onPressed: () {

                      }, child: Text("Sign Up")))
            ],
          ),
        ));
  }
}
