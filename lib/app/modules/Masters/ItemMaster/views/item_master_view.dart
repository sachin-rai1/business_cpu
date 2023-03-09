import 'package:business_cpu/app/data/widgets.dart';
import 'package:business_cpu/app/modules/Masters/ItemMaster/ViewItem/views/view_item_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../AddItem/views/add_item_view.dart';
import '../controllers/item_master_controller.dart';

class ItemMasterView extends GetView<ItemMasterController> {
  const ItemMasterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Master'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: ()=>Get.to(()=>ViewItemView()),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    children: [
                      RowTextWidget(titleText: "Item Name", subText: "Item"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RowTextWidget(titleText: "Qty", subText: "10000"),
                          RowTextWidget(titleText: "Price", subText: "2000"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddItemView());
        },
        child: Icon(Icons.add , size: 35,),
      ),
    );
  }
}
