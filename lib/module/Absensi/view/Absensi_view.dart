import 'package:flutter/material.dart';
import '../controller/Absensi_controller.dart';

import 'package:get/get.dart';

class AbsensiView extends StatelessWidget {
  const AbsensiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AbsensiController>(
      init: AbsensiController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Absensi"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  //body
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}