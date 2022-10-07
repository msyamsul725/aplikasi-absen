import 'package:cloud_firestore/cloud_firestore.dart';
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
                children: [
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("absenMasuk")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      if (snapshot.data!.docs.isEmpty) {
                        return const Text("No Data");
                      }
                      final data = snapshot.data!;

                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            return Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: ListTile(
                                      title: Text("${item['date']}"),
                                      subtitle: Text("${item['dateCreate']}"),
                                      trailing: Text("${item['email']}"),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection("absenMasuk")
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
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("absenKeluar")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      if (snapshot.data!.docs.isEmpty) {
                        return const Text("No Data");
                      }
                      final data = snapshot.data!;

                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            return Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: ListTile(
                                      title: Text("${item['date']}"),
                                      subtitle: Text("${item['dateCreate']}"),
                                      trailing: Text("${item['email']}"),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection("absenKeluar")
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
