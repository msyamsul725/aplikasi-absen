import 'package:get/get.dart';
import '../view/Pengajuan_view.dart';

class PengajuanController extends GetxController {
  PengajuanView? view;

  String selected = "";

  List menu = ["Semua", "Approved", "Reject", "Pandding"];

  String category = "";

  changeSelected() {
    update();
  }
}
