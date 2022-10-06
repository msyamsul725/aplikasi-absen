import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../LoginAbsen/view/LoginAbsen_view.dart';
import '../view/Dashboard_view.dart';

class DashboardController extends GetxController {
  DashboardView? view;
  bool? isAbsen;

  String? email;
  FirebaseAuth auth = FirebaseAuth.instance;

  isChacking() async {
    if (FirebaseAuth.instance.currentUser != null) {
      isAbsen = true;
    } else {
      isAbsen = false;
    }
  }

  absenMasuk() async {
    if (FirebaseAuth.instance.currentUser == null) {
      await Get.to(const LoginAbsenView());
      return;
    }
    email = auth.currentUser!.email;
    isAbsen = true;

    await FirebaseFirestore.instance.collection("absenMasuk").add({
      "date": "Hari ini",
      "dateCreate": DateTime.now().toString(),
      "email": email,
    });
    update();
  }

  getCurretAbsen() async {
    String email = "admin@admin.com";
  }

  addState() {
    update();
  }

  @override
  void onInit() {
    isChacking();
    super.onInit();
  }
}
