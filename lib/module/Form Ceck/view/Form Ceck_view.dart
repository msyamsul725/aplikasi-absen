import 'package:flutter/material.dart';
import '../controller/Form Ceck_controller.dart';

import 'package:get/get.dart';

class FormCeckView extends StatelessWidget {
  final Map item;
  const FormCeckView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormCeckController>(
      init: FormCeckController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                SizedBox(
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(item['photo']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0.0,
                              bottom: 0.0,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.download,
                                      color: Colors.blueGrey,
                                      size: 32.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2.6,
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              " Nama :  ${item["nama"]}",
                              style: const TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Text("${item["created_at"]}"),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          " Bagian :  ${item["bagian"]}",
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          " Tanggal Ijin :  ${item["tanggal_ijin"]}",
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          " Alasan :  ${item["cek_box"]}",
                          style: const TextStyle(
                            fontSize: 20.0,
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
                          "Deskripsi",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 60.0,
                        width: 300.0,
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        child: Text(
                          item['deskripsi'],
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 18.0,
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
                          "Pilih ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 28,
                        child: ListView.builder(
                          itemCount: controller.actionList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var data = controller.actionList[index];
                            return Obx(() {
                              return InkWell(
                                onTap: () => controller.selected.value = data,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff38353D),
                                    borderRadius: BorderRadius.circular(4),
                                    border: (controller.selected.value == null)
                                        ? null
                                        : (controller.selected.value!
                                                .contains(data))
                                            ? Border.all(
                                                width: 2,
                                                color: const Color(0xfffe5524),
                                              )
                                            : null,
                                  ),
                                  child: Center(
                                    child: Text(
                                      data,
                                      style: TextStyle(
                                        color:
                                            (controller.selected.value == null)
                                                ? Colors.white
                                                : (controller.selected.value!
                                                        .contains(data))
                                                    ? const Color(0xfffe5524)
                                                    : Colors.white,
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      SizedBox(
                        width: 100.0,
                        height: 40.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(64.0),
                            ),
                          ),
                          onPressed: () => controller.doSave(),
                          child: const Text("Save"),
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
