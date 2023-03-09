import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/announcements_controller.dart';

class AnnouncementsView extends GetView<AnnouncementsController> {
  const AnnouncementsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnnouncementsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AnnouncementsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
