import 'package:business_cpu/app/modules/Masters/VendorMaster/AddVendor/views/add_vendor_view.dart';
import 'package:business_cpu/app/modules/Masters/VendorMaster/ViewVendor/views/view_vendor_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/widgets.dart';
import '../controllers/vendor_master_controller.dart';

class VendorMasterView extends GetView<VendorMasterController> {
  const VendorMasterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VendorMasterView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () {
              Get.to(() => ViewVendorView());
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    RowTextWidget(
                      titleText: 'Company Name ',
                      subText: 'Company',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RowTextWidget(
                            titleText: "GSTIN", subText: "24CVWPRC"),
                        RowTextWidget(
                            titleText: "Balance", subText: "10000"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddVendorView());
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
