import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/greetings_controller.dart';

class GreetingsView extends GetView<GreetingsController> {
  const GreetingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GreetingsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GreetingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
