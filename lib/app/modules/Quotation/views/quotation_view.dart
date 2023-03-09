import 'package:business_cpu/app/modules/Quotation/AddQuote/views/add_quote_view.dart';
import 'package:business_cpu/app/modules/Quotation/ViewQuote/views/view_quote_view.dart';
import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:get/get.dart';

import '../../../data/constants.dart';
import '../controllers/quotation_controller.dart';

class QuotationView extends StatefulWidget {
  const QuotationView({Key? key}) : super(key: key);

  @override
  State<QuotationView> createState() => _QuotationViewState();
}

class _QuotationViewState extends State<QuotationView> {
  QuotationController quotationController = Get.put(QuotationController());

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((Duration duration) {
      FeatureDiscovery.discoverFeatures(
        context,
        const <String>{
          '1',
          '2',
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: quotationController.scaffoldKey,
      drawer: Drawer(),
      appBar: AppBar(
        leading: DescribedFeatureOverlay(
          featureId: '1',
          tapTarget: Icon(Icons.menu),
          description: Text("Tap to open Menu"),
          title: Text("Menu"),
          child: IconButton(
            onPressed: () {
              quotationController.scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                width: Constants.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Constants.primaryColor),

                    // color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for Company or Product Name",
                    border: InputBorder.none,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              padding:
                  EdgeInsets.only(left: 15.0, right: 15, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Name",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => ViewQuoteView());
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Container(
                      // height: 40,
                      color: Colors.grey.shade100,
                      width: Constants.width,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Carder & Co.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Product name",
                                  style: TextStyle(
                                    fontSize: 12,
                                    // fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "50,000",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Approved",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.more_vert_outlined,
                                    color: Constants.primaryColor),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: DescribedFeatureOverlay(
        featureId: '2',
        description: Text("Tap to Add Product"),
        title: Text("Add Product"),
        tapTarget: Icon(Icons.add),
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {
            Get.to(AddQuoteView());
            // addQuote(context);
          },
        ),
      ),
    );
  }
}