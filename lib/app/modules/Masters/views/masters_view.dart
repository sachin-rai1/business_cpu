import 'package:business_cpu/app/data/widgets.dart';
import 'package:business_cpu/app/modules/Masters/CustomerMaster/views/customer_master_view.dart';
import 'package:business_cpu/app/modules/Masters/ItemMaster/views/item_master_view.dart';
import 'package:business_cpu/app/modules/Masters/LeadsMaster/views/leads_master_view.dart';
import 'package:business_cpu/app/modules/Masters/TeamMembers/views/team_members_view.dart';
import 'package:business_cpu/app/modules/Masters/VendorMaster/views/vendor_master_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/masters_controller.dart';

class MastersView extends GetView<MastersController> {
  const MastersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Master's View"),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            MyGrid(
              onTap: () {
                Get.to(() => TeamMembersView());
              },
              title: "Team Member's View",
              image: "assets/images/team.png",
            ),
            MyGrid(
              onTap: () {
                Get.to(() => CustomerMasterView());
              },
              title: "Customer's Master",
              image: "assets/images/clients.png",
            ),
            MyGrid(
              onTap: () {
                Get.to(() => VendorMasterView());
              },
              title: "Vendor's Master",
              image: "assets/images/vendors.png",
            ),
            MyGrid(
              onTap: () {
                Get.to(ItemMasterView());
              },
              title: "Item's Master",
              icon: CupertinoIcons.chart_bar_square,
            ),
            MyGrid(
              onTap: () {
                Get.to(LeadsMasterView());
              },
              title: "Lead's Master",
              icon: Icons.leaderboard,
            ),
          ],
        ));
  }
}