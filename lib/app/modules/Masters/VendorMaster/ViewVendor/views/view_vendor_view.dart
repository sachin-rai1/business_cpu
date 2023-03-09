import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../data/constants.dart';
import '../../../../../data/widgets.dart';
import '../controllers/view_vendor_controller.dart';

class ViewVendorView extends GetView<ViewVendorController> {
   ViewVendorView({Key? key}) : super(key: key);

   final ViewVendorController vendorController = Get.put(ViewVendorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Vendor'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            TextFormWidget(
              textController: controller.companyNameTextController,
              dropDown: false,
              titleText: "Company Name",
              hintText: "Enter Company Name",
            ),
            TextFormWidget(
              textController: controller.contactNameTextController,
              dropDown: false,
              titleText: "Contact Person Name",
              hintText: "Enter Contact Person Name",
            ),
            TextFormWidget(
              textController: controller.phoneNumberTextController,
              dropDown: false,
              titleText: "Phone No",
              hintText: "Enter Phone No",
            ),
            TextFormWidget(
              keyboardType: TextInputType.multiline,
              textController: controller.address1TextController,
              dropDown: false,
              titleText: "Address Line 1",
              hintText: "Enter Address Line 1",
            ),
            TextFormWidget(
              keyboardType: TextInputType.multiline,
              textController: controller.address2TextController,
              dropDown: false,
              titleText: "Address Line 2",
              hintText: "Enter Address Line 2",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormWidget(
                  textController: controller.cityTextController,
                  dropDown: false,
                  titleText: "City",
                  hintText: "Enter City",
                  textBoxWidth: Constants.width / 2.5,
                ),
                TextFormWidget(
                    keyboardType: TextInputType.number,
                    textController: controller.pinTextController,
                    dropDown: false,
                    titleText: "Pin code",
                    hintText: "Enter Pin Code",
                    textBoxWidth: Constants.width / 2.5),
              ],
            ),
            TextFormWidget(
              textController: controller.stateTextController,
              dropDown: false,
              titleText: "State",
              hintText: "Enter State",
            ),
            TextFormWidget(
              keyboardType: TextInputType.number,
              textController: controller.openBalanceTextController,
              dropDown: false,
              titleText: "Opening Balance",
              hintText: "Enter Opening Balance",
            ),
            TextFormWidget(
              textController: controller.gstInTextController,
              dropDown: false,
              titleText: "GSTIN",
              hintText: "Enter GSTIN",
            ),
            TextFormWidget(
              textController: controller.panTextController,
              dropDown: false,
              titleText: "Company PAN",
              hintText: "Enter Company PAN",
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                "Update Vendor",
              ),
              icon: Icon(
                Icons.add,
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
