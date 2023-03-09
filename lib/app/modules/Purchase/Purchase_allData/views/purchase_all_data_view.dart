import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/constants.dart';
import '../../../../data/widgets.dart';
import '../controllers/purchase_all_data_controller.dart';

class PurchaseAllDataView extends GetView<PurchaseAllDataController> {
  PurchaseAllDataView({Key? key}) : super(key: key);

 final PurchaseAllDataController purchaseAllDataController = Get.put(PurchaseAllDataController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: (controller.items.value == 0)
            ? Center(
                child: Text(
                  'Tap + to add Purchase',
                  style: TextStyle(fontSize: 20),
                ),
              )
            : ListView.builder(
                padding: EdgeInsets.only(top: 35),
                itemCount: 15,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                  purchaseDetails(context);
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(controller.price.value.toString(),
                                      style: TextStyle(fontSize: 15)),
                                  Icon(Icons.more_vert)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           addPurchase(context);
          },
          child: Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ),
    );
  }
  addPurchase(context){
    AlertDialog alert = AlertDialog(
      scrollable: true,
      titlePadding: EdgeInsets.symmetric(vertical: 10),
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      actions: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: Constants.width,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Add Purchase",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Constants.primaryColor),
          ),
        )
      ],
      content: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormWidget(
                dropDownItems:
                controller.dropDownStatus.map((selectedType) {
                  return DropdownMenuItem(
                    child: Text(
                      selectedType,
                      style: TextStyle(
                          fontSize: 16, color: Constants.primaryColor),
                    ),
                    value: selectedType,
                  );
                }).toList(),
                dropDownOnChanged: (newValue) {
                  print(newValue);
                  controller.selectedDropDown(newValue.toString());
                  print(controller.selectedDropDown.value);
                },
                dropDown: true,
                titleText: "Vendor Name",
                hintText: "Enter Vendor Name"),
            TextFormWidget(
                textController: controller.productNameController,
                dropDown: false,
                titleText: "ProductName",
                hintText: "Product Name"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormWidget(
                    textController: controller.qtyController,
                    dropDown: false,
                    textBoxWidth: Constants.width /3,
                    titleText: "Quantity",
                    hintText: "Enter Qty"),
                TextFormWidget(
                    textController: controller.priceController,
                    dropDown: false,
                    textBoxWidth: Constants.width /3,
                    titleText: "Price",
                    hintText: "Enter Price"),
              ],
            ),
            Text("Delivery Date"),
            SizedBox(
              height: 10,
            ),
            DateTimePicker(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.calendar_month),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.only(left: 10),),
              type: DateTimePickerType.date,
              dateMask: 'dd-MM-yyyy',
              initialValue: DateTime.now().toString(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              icon: Icon(Icons.event),
              onChanged: (val) => print(val),
              validator: (val) {
                print(val);
                return null;
              },
              onSaved: (val) => print(val),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormWidget(
                  textController: controller.paymentTermController,
                  dropDown: false,
                  titleText: "Payment Terms",
                  hintText: "Enter Payment Terms"),
            ),
            TextFormWidget(
                textController: controller.remarksController,
                dropDown: false,
                titleText: "Remarks",
                hintText: "Enter Remarks"),
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
  purchaseDetails(context){
    AlertDialog alert = AlertDialog(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      scrollable: true,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ColTextWidget(
              titleText: "Client Name",
              subText: controller.clientName.value),
          RowTextWidget(
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
              titleText: "Delivery Date",
              subText: controller.deliveryDate.value),
          RowTextWidget(
              titleText: "Payment Terms",
              subText: controller.paymentTerms.value),
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
  }
}
