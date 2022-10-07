import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
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

    var timeNow = DateTime.now();
    String nameMount = DateFormat('yMd').format(timeNow);

    await FirebaseFirestore.instance.collection("absenMasuk").add({
      "date": "Hari ini",
      "dateCreate": nameMount,
      "email": email,
    });
    update();
  }

  getCurretAbsen() async {
    if (FirebaseAuth.instance.currentUser == null) {
      await Get.to(const LoginAbsenView());
      return;
    }

    var collection = FirebaseFirestore.instance
        .collection("absenMasuk")
        .where(
          "dateCreate",
          isNotEqualTo: DateTime.now().toString(),
        )
        .snapshots();

    // if (collection.isEmpty){
    //   Map<String, dynamic>? data = docSnapshot.data();
    //   var value = data?['some_field'];
    // }

    // var collection = FirebaseFirestore.instance.collection('absenMasuk');
    // var docSnapshot = await collection.doc('dateCreate').get();
    // if (docSnapshot.exists) {
    //   Map<String, dynamic>? data = docSnapshot.data();
    //   var value = data?['some_field'];
    // }

    //  child: StreamBuilder<QuerySnapshot>(
    //                 stream: FirebaseFirestore.instance
    //                     .collection("movies")
    //                     .where("title", isNotEqualTo: "null")
    //                     .snapshots(),
    //                 builder: (context, snapshot) {
    //                   if (snapshot.hasError) return Text("Error");
    //                   if (!snapshot.hasData) return Text("No Data");
    //                   final data = snapshot.data!;
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
