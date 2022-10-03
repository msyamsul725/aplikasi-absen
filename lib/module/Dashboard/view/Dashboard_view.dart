import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';

import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        Widget AbsenMasuk = Column(
          children: [
            InkWell(
              onTap: () {
                controller.isAbsen = true;
                controller.update();
              },
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 227, 143, 17),
                radius: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.touch_app_outlined,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Absen Masuk",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const TambahIzinView());
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 147, 127, 127),
                              width: 2.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 28.0,
                            child: Icon(
                              Icons.remove_circle,
                              color: Colors.red,
                              size: 28.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: const Text(
                            "ijin tidak hadir",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 147, 127, 127),
                            width: 2.0,
                          ),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28.0,
                          child: Icon(
                            Icons.description,
                            color: Color.fromARGB(255, 227, 143, 17),
                            size: 28.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: const Text(
                          "Lihat History",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );

        Widget AbsenKeluar = Column(
          children: [
            InkWell(
              onTap: () {
                controller.isAbsen = false;
                controller.update();
              },
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 227, 17, 17),
                radius: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.touch_app_outlined,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Absen Keluar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        "13:20:31",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: const Text(
                          "Absen Masuk",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "8 Jam",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: const Text(
                          "Jam Kerja",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  //body
                  const SizedBox(
                    height: 70.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 80.0,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 26.0),
                              decoration: const BoxDecoration(),
                              child: const Text(
                                "Selamat Datang",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 26.0),
                              child: const Text(
                                "sem",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 80.0),
                          width: 56.0,
                          height: 56.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 16.0,
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "13:20",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Kamis, 13 Sep 2021",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  (controller.isAbsen == false) ? AbsenMasuk : AbsenKeluar
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
