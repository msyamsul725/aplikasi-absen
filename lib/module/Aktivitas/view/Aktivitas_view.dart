import 'package:flutter/material.dart';
import '../controller/Aktivitas_controller.dart';

import 'package:get/get.dart';

class AktivitasView extends StatelessWidget {
  const AktivitasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AktivitasController>(
      init: AktivitasController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Aktivitas"),
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