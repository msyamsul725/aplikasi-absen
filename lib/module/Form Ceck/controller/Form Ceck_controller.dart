import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../view/Form Ceck_view.dart';

class FormCeckController extends GetxController {
  FormCeckView? view;
  Rxn<String> selected = Rxn<String>();
  List actionList = ['Pandding', 'Reject', 'Approved'];

  doSave() async {
    await FirebaseFirestore.instance.collection("approve").add({
      "created_at": Timestamp.now(),
      "selected": selected.value,
      "absensi_ijin": view!.item,
    });
    Get.back();
  }
}
