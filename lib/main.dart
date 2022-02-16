import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:thera/app/settings/Routes.dart';
import 'package:thera/app/settings/pages.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // para firebase de inicie de forma segura
  await Firebase.initializeApp(); // llamar a firebase

  SystemChrome.setSystemUIOverlayStyle(
    // ignore: prefer_const_constructors
    SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      title: 'TheraPhone',
      smartManagement: SmartManagement.full,
      getPages: Pages.pages,
      initialRoute: Routes.SPLASH,
    );
  }
}
