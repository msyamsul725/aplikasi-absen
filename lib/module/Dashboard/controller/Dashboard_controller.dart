import 'package:get/get.dart';
import '../view/Dashboard_view.dart';

class DashboardController extends GetxController {
  DashboardView? view;

  var isAbsen = false;

  addState() {
    update();
  }
}
