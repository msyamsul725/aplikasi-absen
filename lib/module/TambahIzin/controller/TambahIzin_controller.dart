import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../../shared/util/input/input.dart';
import '../view/TambahIzin_view.dart';

class TambahIzinController extends GetxController {
  TambahIzinView? view;

  saveIjin() async {
    var nama = Input.get("nama");
    var bagian = Input.get("bagian");
    var cek = Input.get("cek_box");
    var tanggalIjin = Input.get("tanggal_ijin");
    var deskripsi = Input.get("deskripsi");

    await FirebaseFirestore.instance.collection("absensi_ijin").add({
      "nama": nama,
      "bagian": bagian,
      "cek_box": cek,
      "tanggal_ijin": tanggalIjin,
      "deskripsi": deskripsi,
      "created_at": Timestamp.now(),
    });
    Get.back();
  }
}
