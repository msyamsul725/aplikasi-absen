import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TambahIzinView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TambahIzinController>(
      init: TambahIzinController(),
      builder: (controller) {
        controller.view = this;
        var date = DateTime.now();
        String nameDay = DateFormat('EEEE').format(date);
        String nameMount = DateFormat('MMMM').format(date);
        String tanggalIjin = DateFormat('MMMM').format(date);

        return Scaffold(
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Stack(
              children: [
                Container(
                  height: 160.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100.0,
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Izin tidak masuk",
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            ElevatedButton.icon(
                              icon: const Icon(Icons.save),
                              label: const Text("Save"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 227, 143, 17),
                              ),
                              onPressed: () => controller.saveIjin(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 140.0,
                  ),
                  height: 640.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "PERMOHONAN IJIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                        child: SizedBox(
                          height: 100.0,
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 200.0,
                                child: ExTextField(
                                  id: "nama",
                                  label: "Nama",
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                    width: 200.0,
                                    child: ExTextField(
                                      id: "bagian",
                                      label: "Bagian",
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "JENIS PERMOHONAN IJIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      const ExCheckBox(
                        id: "cek_box",
                        items: [
                          {
                            "value": "ijin terlambat datang",
                            'label': "Ijin Terlambat Datang",
                          },
                          {
                            "value": "ijin tidak masuk",
                            'label': "Ijin Tidak Masuk",
                          }
                        ],
                      ),
                      const ExDatePicker(
                        id: "tanggal_ijin",
                        label: "Pilih Tanggal :",
                      ),
                      const Expanded(
                          child: ExImagePicker(id: "photo", label: "photo")),
                      const Expanded(
                        child: ExTextArea(
                          id: "deskripsi",
                          label: "Deskripsi",
                          maxLines: 2,
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
