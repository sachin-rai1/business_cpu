import 'package:business_cpu/app/data/constants.dart';
import 'package:business_cpu/app/data/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/from_sales_controller.dart';

class FromSalesView extends GetView<FromSalesController> {
  FromSalesView({Key? key}) : super(key: key);

  FromSalesController fromSalesController = Get.put(FromSalesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 40,
            width: Constants.width,
            decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sales Details",
                    style:
                        TextStyle(fontSize: 15, color: Constants.thirdColor)),
                Text("Amount",
                    style: TextStyle(fontSize: 15, color: Constants.thirdColor))
              ],
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      AlertDialog alert = AlertDialog(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        scrollable: true,
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Hold"),
                                  style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    backgroundColor: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Approve"),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ColTextWidget(
                                titleText: "Client Name",
                                subText: controller.clientName.value),
                            ColTextWidget(
                                titleText: "Product Name",
                                subText: controller.productName.value),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RowTextWidget(
                                    titleText: "Quantity",
                                    subText: controller.qty.value.toString()),
                                RowTextWidget(
                                    titleText: "Price",
                                    subText: controller.price.value.toString()),
                              ],
                            ),
                            RowTextWidget(
                                titleText: "Status",
                                subText: controller.status.value),
                            ColTextWidget(
                                titleText: "Remarks",
                                subText: controller.remarks.value),
                          ],
                        ),
                      );
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 1),
                      child: Card(
                        color: Constants.thirdColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          width: Constants.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(controller.clientName.value,
                                      style: TextStyle(fontSize: 16)),
                                  Text(controller.productName.value,
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(controller.price.value.toString(),
                                      style: TextStyle(fontSize: 15)),
                                  Text("view full details",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Constants.primaryColor)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                })),
      ],
    ));
  }
}
