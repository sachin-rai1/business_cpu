import 'package:business_cpu/app/data/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/constants.dart';
import '../controllers/new_sales_controller.dart';

class NewSalesView extends GetView<NewSalesController> {
  NewSalesView({Key? key}) : super(key: key);
  NewSalesController newSalesController = Get.put(NewSalesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 40,
              alignment: Alignment.centerLeft,
              width: Constants.width,
              decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text("Client Details",
                  style: TextStyle(fontSize: 15, color: Constants.thirdColor)),
            ),
          ),
          Expanded(child:
              ListView.builder(itemBuilder: (BuildContext context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Constants.thirdColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColTextWidget(
                            titleText: "Client Name",
                            subText: controller.clientName.value),
                        InkWell(
                            onTap: () {
                              AlertDialog alert = AlertDialog(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                contentPadding: EdgeInsets.zero,
                                buttonPadding: EdgeInsets.zero,
                                actionsPadding: EdgeInsets.zero,
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MaterialButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15)),
                                          ),
                                          onPressed: () {},
                                          color: Colors.grey,
                                          height: 50,
                                          minWidth: Constants.width / 2.8,
                                          child: Text(
                                            "Cancel",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      MaterialButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(15)),
                                        ),
                                        onPressed: () {},
                                        height: 50,
                                        color: Constants.primaryColor,
                                        minWidth: Constants.width / 2.8,
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                                content: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.error_outline,
                                        size: 50,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        "sure you want to delete\nthis Sales ?",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  });
                            },
                            child: Icon(
                              Icons.delete_outline_rounded,
                              size: 30,
                            ))
                      ],
                    ),
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
                        titleText: "Discount %",
                        subText: controller.discount.value.toString()),
                    ColTextWidget(
                        titleText: "Remarks",
                        subText: controller.remarks.value),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.picture_as_pdf),
                          label: Text("Download"),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                          label: Text("Share"),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
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
                      "Add Sales",
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
                        titleText: "Client Name",
                        hintText: "Enter Client Name"),
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
                    TextFormWidget(
                        textController: controller.discountController,
                        dropDown: false,
                        titleText: "Discount %",
                        hintText: "Discount "),
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
          },
          child: Icon(
            Icons.add,
            size: 35,
          )),
    );
  }
}
