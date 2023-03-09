import 'package:business_cpu/app/modules/Accounts/fromSales/views/from_sales_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/accounts_controller.dart';
import '../newSales/views/new_sales_view.dart';

class AccountsView extends GetView<AccountsController> {
   AccountsView({Key? key}) : super(key: key);
  AccountsController accountController = Get.put(AccountsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text('Accounts View'),
        // leading: Icon(Icons.menu),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(10, 60),
          child: ColoredBox(
            color: Colors.white,
            child: TabBar(
              indicatorColor: Colors.deepPurple.shade500,
              labelColor: Colors.black,
              tabs: controller.myTabs,
              controller: controller.tabController,
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [FromSalesView(), NewSalesView()],
      ),
    );
  }
}
