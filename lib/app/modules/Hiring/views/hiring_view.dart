import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hiring_controller.dart';

class HiringView extends GetView<HiringController> {
  const HiringView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HiringView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HiringView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
