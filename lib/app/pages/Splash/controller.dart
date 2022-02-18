import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:thera/app/settings/Routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    //await Get.offAndToNamed(Routes.HOME);

    CollectionReference collect =
        FirebaseFirestore.instance.collection("the_users");

    var neda = collect.doc('t_users').set({
      "user_nombre": 'usertest',
      'user_creacionfecha': 'testing',
      'user_email': 'test@test.com',
      'tipo_user': 'dba',
      'user_clave': 'testinggg',
    }).catchError((e) => print("errorrrrrrrr"));

    super.onReady();
  }
}
