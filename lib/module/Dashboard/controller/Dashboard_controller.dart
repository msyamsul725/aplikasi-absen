import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../view/Dashboard_view.dart';

class DashboardController extends GetxController {
  DashboardView? view;

  var isAbsen = false;

  absenMasuk() async {
    await FirebaseFirestore.instance.collection("absenMasuk").add({
      "date": "Hari ini",
      "dateCreate": DateTime.now().toString(),
      "email": "admin@admin.com"
    });
  }

  getCurretAbsen() async {
    await FirebaseFirestore.instance.collection("absenMasuk").get();
    String email = "admin@admin.com";
  }

  addState() {
    update();
  }
}
