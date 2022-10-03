import 'package:flutter/material.dart';
import '../controller/DetailRekap_controller.dart';

import 'package:get/get.dart';

class DetailRekapView extends StatelessWidget {
  const DetailRekapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailRekapController>(
      init: DetailRekapController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Detail Rekap",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.orange[100]!,
                        child: const Icon(
                          Icons.calendar_month,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Absensi",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "23 September 202",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Absen Masuk",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '17',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: '40',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: '31',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28.0,
                          child: Icon(
                            Icons.ads_click,
                            size: 28.0,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Absen Keluar",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '17',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: '40',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50.0,
                                        )),
                                    TextSpan(
                                        text: '31',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28.0,
                          child: Icon(
                            Icons.exit_to_app,
                            size: 28.0,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
