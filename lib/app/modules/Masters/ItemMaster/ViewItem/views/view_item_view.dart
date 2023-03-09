import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../data/constants.dart';
import '../../../../../data/widgets.dart';
import '../controllers/view_item_controller.dart';

class ViewItemView extends GetView<ViewItemController> {
   ViewItemView({Key? key}) : super(key: key);

    final ViewItemController viewItemController = Get.put(ViewItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewItemView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            TextFormWidget(
              dropDownOnChanged: (newValue) {
                print(newValue);
                controller.selectedDropDown(newValue.toString());
              },
              dropDown: true,
              titleText: "Item Type",
              dropDownItems: controller.items.map((selectedItem) {
                return DropdownMenuItem(
                  value: selectedItem,
                  child: Text(selectedItem),
                );
              }).toList(),
            ),
            TextFormWidget(
              dropDown: false,
              titleText: "Item Name",
              textController: controller.itemNameController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormWidget(
                  keyboardType: TextInputType.number,
                  textController: controller.priceController,
                  dropDown: false,
                  titleText: "Price",
                  textBoxWidth: Constants.width / 2.5,
                ),
                TextFormWidget(
                    keyboardType: TextInputType.number,
                    textController: controller.hsnController,
                    dropDown: false,
                    titleText: "HSN Code",
                    textBoxWidth: Constants.width / 2.5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormWidget(
                    textController: controller.uomController,
                    dropDown: false,
                    titleText: "UOM",
                    textBoxWidth: Constants.width / 2.5),
                TextFormWidget(
                    keyboardType: TextInputType.number,
                    textController: controller.openingStockController,
                    dropDown: false,
                    titleText: "Opening Stock",
                    textBoxWidth: Constants.width / 2.5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormWidget(
                    keyboardType: TextInputType.number,
                    onTextChanged: (value) {
                      print('trigger');
                      controller.igstCalculate();
                    },
                    textController: controller.cgstController,
                    dropDown: false,
                    titleText: "CGST %",
                    textBoxWidth: Constants.width / 3.5),
                TextFormWidget(
                    keyboardType: TextInputType.number,
                    onTextChanged: (value) {
                      print('trigger');
                      controller.igstCalculate();
                    },
                    textController: controller.sgstController,
                    dropDown: false,
                    titleText: "SGST %",
                    textBoxWidth: Constants.width / 3.5),
                Obx(() {
                  return TextFormWidget(
                      readOnly: true,
                      hintText: controller.igstController.value.toString(),
                      dropDown: false,
                      titleText: "IGST %",
                      textBoxWidth: Constants.width / 3.5);
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormWidget(
                    keyboardType: TextInputType.number,
                    textController: controller.reorderLevelController,
                    dropDown: false,
                    titleText: "Re-Order Level",
                    textBoxWidth: Constants.width / 2.5),
                TextFormWidget(
                    keyboardType: TextInputType.number,
                    textController: controller.warningController,
                    dropDown: false,
                    titleText: "Warning Level",
                    textBoxWidth: Constants.width / 2.5),
              ],
            ),
            Row(
              children: [
                Text("Maintain Stock ? "),
                Row(
                  children: [
                    Obx(
                          () => Radio(
                          value: 'Yes',
                          groupValue: controller.maintain.value,
                          onChanged: (value) {
                            controller.maintain.value = value.toString();
                            print(value);
                          }),
                    ),
                    Text("Yes"),
                  ],
                ),
                Obx(
                      () => Row(
                    children: [
                      Radio(
                          value: "No",
                          groupValue: controller.maintain.value,
                          onChanged: (value) {
                            controller.maintain.value = value.toString();
                            print(value);
                          }),
                      Text("No")
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Update Item"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}