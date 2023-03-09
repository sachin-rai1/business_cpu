import 'package:feature_discovery/feature_discovery.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/data/constants.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() {
  firebaseInit();
  runApp(
    FeatureDiscovery(
      child: GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Constants.matColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(color: Colors.black87, fontSize: 25),
            centerTitle: true,
          ),
        ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}

Future<void> firebaseInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.getInitialMessage();
  print("I was here");
}
