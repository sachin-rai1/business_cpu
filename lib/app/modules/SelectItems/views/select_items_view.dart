import 'package:business_cpu/app/data/widgets.dart';
import 'package:business_cpu/app/modules/Masters/ItemMaster/AddItem/views/add_item_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/constants.dart';
import '../controllers/select_items_controller.dart';

class SelectItemsView extends GetView<SelectItemsController> {
  SelectItemsView({Key? key}) : super(key: key);

  SelectItemsController selectItemsController =
      Get.put(SelectItemsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Select Items'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormWidget(
                    dropDownOnChanged: (selectedValue) {
                      controller.selectedProduct(selectedValue.toString());
                    },
                    dropDownWidth: Constants.width / 1.3,
                    dropDownItems: controller.listProduct.map((element) {
                      return DropdownMenuItem(
                        child: Text(element),
                        value: element,
                      );
                    }).toList(),
                    dropDown: true,
                    titleText: "Product Name",
                    borderSideDropDown: BorderSide.none,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => AddItemView());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Icon(
                        Icons.add_circle_outline_outlined,
                        color: Constants.primaryColor,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormWidget(
                      dropDown: false,
                      titleText: "Price",
                      textBoxWidth: Constants.width / 2.5),
                  TextFormWidget(
                      dropDown: false,
                      titleText: "Qty",
                      textBoxWidth: Constants.width / 2.5),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormWidget(
                      dropDown: false,
                      titleText: "CGST %",
                      textBoxWidth: Constants.width / 3.5),
                  TextFormWidget(
                      dropDown: false,
                      titleText: "SGST %",
                      textBoxWidth: Constants.width / 3.5),
                  TextFormWidget(
                      dropDown: false,
                      titleText: "IGST %",
                      textBoxWidth: Constants.width / 3.5),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormWidget(
                      dropDown: false,
                      titleText: "Discount",
                      textBoxWidth: Constants.width / 2.5),
                  TextFormWidget(
                      dropDown: false,
                      titleText: "Amount",
                      textBoxWidth: Constants.width / 2.5),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                  width: Constants.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add Product"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ))
            ],
          ),
        ));
  }
}
