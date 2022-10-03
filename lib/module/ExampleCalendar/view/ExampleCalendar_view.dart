import 'package:flutter/material.dart';
import '../controller/ExampleCalendar_controller.dart';

import 'package:get/get.dart';

class ExampleCalendarView extends StatelessWidget {
  const ExampleCalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExampleCalendarController>(
      init: ExampleCalendarController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ExampleCalendar"),
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