import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intranet_controller.dart';

class IntranetView extends GetView<IntranetController> {
  const IntranetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntranetView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'IntranetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
