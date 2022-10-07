import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
      init: HistoryController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("History"),
            actions: const [],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //body
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("absensi_ijin")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      if (snapshot.data!.docs.isEmpty) {
                        return const Text("No Data");
                      }
                      final data = snapshot.data!;
                      return SizedBox(
                        height: 400.0,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            var tangalIzin = item["tanggal_ijin"];

                            var parsedDate = DateTime.parse(tangalIzin);
                            String nameDay =
                                DateFormat('yMd').format(parsedDate);

                            return Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () =>
                                        Get.to(FormCeckView(item: item)),
                                    child: Card(
                                      child: ListTile(
                                        title: Text("${item["cek_box"]}"),
                                        subtitle: Text(nameDay),
                                        trailing: ElevatedButton.icon(
                                            icon: const Icon(Icons.check),
                                            label: const Text("Cek"),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blueGrey,
                                            ),
                                            onPressed: () {}),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection("absensi_ijin")
                                        .doc(item["id"])
                                        .delete();
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 24.0,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
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
