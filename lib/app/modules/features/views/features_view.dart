import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/features_controller.dart';

class FeaturesView extends GetView<FeaturesController> {
  const FeaturesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FeaturesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FeaturesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
