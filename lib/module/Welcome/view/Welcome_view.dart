import 'package:flutter/material.dart';

import 'package:flutter_hyper_ui/module/LoginAbsen/view/LoginAbsen_view.dart';
import 'package:flutter_hyper_ui/module/Welcome/controller/Welcome_controller.dart';

import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.ibb.co/syLqCpL/b455fbc5f6144f809db03edd5cf4bf4a-120198496-977147059431121-5959947980416470459-n.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        radius: 84.0,
                        child: Image.network(
                          "http://www.pngmart.com/files/12/Flappy-Bird-PNG-Transparent-Picture.png",
                          width: 64.0,
                          height: 64.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "Aplikasi Absensi Online",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Direktorat PT MCS Grup",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 220.0,
                      ),
                      SizedBox(
                        height: 55.0,
                        width: 330.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () => Get.to(const LoginAbsenView()),
                          child: const Text("Mulai Sekarang",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 227, 143, 17),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
