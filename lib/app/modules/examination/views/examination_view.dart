import 'package:college_web/app/modules/widgets/custom_drawer.dart';
import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/modules/widgets/responsive.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/examination_controller.dart';
import 'dart:html' as html;

class ExaminationView extends GetView<ExaminationController> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      appBar: isDesktop
          ? AppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                  child: MenuBar(), preferredSize: Size.fromHeight(100.0)),
            )
          : AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              flexibleSpace: Container(
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.HOME);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        margin: EdgeInsets.only(top: 10, left: 100),
                        child: Image.asset("assets/logo.jpeg"),
                      ),
                      Text(
                        "RAMA DEVI BAJLA MAHILA \nMAHAVIDYALAYA, DEOGHAR",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFA41E34),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              bottom: PreferredSize(
                child: Text(""),
                preferredSize: Size.fromHeight(60.0),
              ),
            ),
      drawer: !isDesktop
          ? Drawer(
              child: DrawerMenu(),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: Get.height * .25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/student_corner.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.only(left: 40, bottom: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Examination",
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Colors.grey[100],
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height * .8,
                  width: 300,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  margin: EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.examinationData.length,
                          itemBuilder: (context, index) {
                            return Obx(
                              () => Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        index == controller.selectedIndex.value
                                            ? Color(0xFFA41E34)
                                            : Colors.black,
                                  ),
                                  color: index == controller.selectedIndex.value
                                      ? Color(0xFFA41E34)
                                      : Colors.white,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    controller.changeIndex(index);
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        controller.examinationData[index]
                                            .toString(),
                                        style: TextStyle(
                                          color: index ==
                                                  controller.selectedIndex.value
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: index ==
                                                controller.selectedIndex.value
                                            ? Colors.white
                                            : Color(0xFFA41E34),
                                        size: 17,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: Get.height * .8,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 1, horizontal: 3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              html.window
                                  .open("http://skmuuniversity.in", "_blank");
                            },
                            child: Text(
                              "UG Exam Form/Admit Card/Result",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
