import 'package:business_cpu/app/modules/Purchase/Purchase_allData/views/purchase_all_data_view.dart';
import 'package:business_cpu/app/modules/Purchase/Purchase_pending/views/purchase_pending_view.dart';
import 'package:business_cpu/app/modules/Purchase/Purchase_reviewed/views/purchase_reviewed_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/constants.dart';
import '../../../data/widgets.dart';
import '../controllers/purchase_controller.dart';

class PurchaseView extends GetView<PurchaseController> {
  PurchaseView({Key? key}) : super(key: key);
  PurchaseController purchaseController = Get.put(PurchaseController());

  @override
  Widget build(BuildContext context) {
    Get.put(PurchaseController());
    return Scaffold(
      appBar: AppBar(
          title: Text("Purchase"),
          bottom: PreferredSize(
            preferredSize: Size(Constants.width, 40),
            child: ColoredBox(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.black87,
                  labelColor: Colors.black87,
                  controller: controller.tabxController,
                  tabs: controller.tabs),
            ),
          )),
      body: TabBarView(
        controller: controller.tabxController,
        children: [
          PurchaseAllDataView(),
          PurchasePendingView(),
          PurchaseReviewedView(),
        ],
      ),
    );
  }
}
