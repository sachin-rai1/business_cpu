import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/constants.dart';
import '../../../../data/widgets.dart';
import '../../../SelectItems/views/select_items_view.dart';
import '../controllers/view_quote_controller.dart';

class ViewQuoteView extends GetView<ViewQuoteController> {
   ViewQuoteView({Key? key}) : super(key: key);
   final ViewQuoteController viewQuoteController = Get.put(ViewQuoteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewQuoteView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              DialogShadeField(
                  text: "Quotation Number",
                  controller: controller.quotation_no.value),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Due Date",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Container(
                        color: Colors.grey.shade100,
                        padding: EdgeInsets.only(top: 1, bottom: 10),
                        height: 45,
                        width: Constants.width / 3,
                        child: DateTimePicker(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: InputBorder.none),
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
                      ),
                    ],
                  ),
                  Container(
                    width: Constants.width / 3,
                    child: DialogShadeField(
                        textInputType:
                        TextInputType.numberWithOptions(decimal: true),
                        text: "Amount",
                        controller: controller.quotation_no.value),
                  ),
                ],
              ),
              TextFormWidget(
                dropDownOnChanged: (newValue) {
                  print(newValue);
                  controller.selectedDropDown(newValue.toString());
                },
                dropDown: true,
                borderSideDropDown: BorderSide.none,
                titleText: "Company Name",
                dropDownItems: controller.items.map((selectedItem) {
                  return DropdownMenuItem(
                    value: selectedItem,
                    child: Text(selectedItem),
                  );
                }).toList(),
              ),
              TextFormWidget(
                dropDown: false,
                titleText: "Product List",
                readOnly: true,
                borderSideTextBox: BorderSide.none,
                onTapTextBox: () {
                  Get.to(() => SelectItemsView());
                },
                suffixIcon: InkWell(
                    onTap: () {
                      Get.to(() => SelectItemsView());
                    },
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      color: Constants.primaryColor,
                      size: 30,
                    )),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      color: Color(0XFFE9F0FE),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("Name: Product Name"),
                              width: Constants.width / 3,
                            ),
                            Text("Qty : 1000"),
                            Text("Amount : 25000"),
                            InkWell(onTap: () {}, child: Icon(Icons.delete))
                          ],
                        ),
                      ),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ColTextWidget(titleText: "Total Qty ", subText: "5000"),
                  ColTextWidget(titleText: "Taxable Amount  ", subText: "1000"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Constants.width / 3.5,
                    child: DialogShadeField(
                        text: "CGST % ", controller: controller.CGST.value),
                  ),
                  Container(
                    width: Constants.width / 3.5,
                    child: DialogShadeField(
                        text: "SGST %", controller: controller.SGST.value),
                  ),
                  Container(
                    width: Constants.width / 3.5,
                    child: DialogShadeField(
                        text: "IGST %", controller: controller.IGST.value),
                  )
                ],
              ),
              Container(
                child: DialogShadeField(
                    text: "Total Amount",
                    textInputType: TextInputType.number,
                    controller: controller.Price.value),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: Constants.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Update Quote",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Constants.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
