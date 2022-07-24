import 'package:college_web/app/modules/widgets/custom_drawer.dart';
import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/modules/widgets/responsive.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/academic_controller.dart';
import 'dart:html' as html;

class AcademicView extends GetView<AcademicController> {
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
                  image: AssetImage("assets/academic.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.only(left: 40, bottom: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Academic",
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
                // Obx(
                //   () =>
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.academics.length,
                            itemBuilder: (context, index) {
                              return Obx(
                                () => Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: index ==
                                              controller.selectedIndex.value
                                          ? Color(0xFFA41E34)
                                          : Colors.black,
                                    ),
                                    color:
                                        index == controller.selectedIndex.value
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
                                          controller.academics[index]
                                              .toString(),
                                          style: TextStyle(
                                            color: index ==
                                                    controller
                                                        .selectedIndex.value
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
                ),
                // ),
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
                    child: Obx(
                      () => SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: controller.selectedIndex == 0
                              ? InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.DEPARTMENT);
                                  },
                                  child: Card(
                                    color: Colors.lightBlue[200],
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 50),
                                      child: Text(
                                        "CLICK HERE TO GET ALL PROGRAMME",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : controller.selectedIndex == 1
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .cbcsRuleRegulationData.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            html.window.open(
                                                controller
                                                    .cbcsRuleRegulationData[
                                                        index]
                                                    .calendarFile
                                                    .toString(),
                                                "_blank");
                                          },
                                          child: Card(
                                            margin: EdgeInsets.all(10),
                                            color: Colors.grey[200],
                                            elevation: 5,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Text(
                                                controller
                                                    .cbcsRuleRegulationData[
                                                        index]
                                                    .title
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  : controller.selectedIndex == 3
                                      ? Column(
                                          children: [
                                            Table(
                                              columnWidths: {
                                                0: FlexColumnWidth(3),
                                                1: FlexColumnWidth(2),
                                                2: FlexColumnWidth(2),
                                              },
                                              defaultVerticalAlignment:
                                                  TableCellVerticalAlignment
                                                      .middle,
                                              border: TableBorder.all(
                                                  color: Colors.black),
                                              children: [
                                                TableRow(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(15),
                                                      child: Text(
                                                        "Departmment",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 22,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(15.0),
                                                      child: Text(
                                                        "Faculty Time Table",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 22,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(15.0),
                                                      child: Text(
                                                        "Class Time Table",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 22,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Table(
                                              columnWidths: {
                                                0: FlexColumnWidth(3),
                                                1: FlexColumnWidth(2),
                                                2: FlexColumnWidth(2),
                                              },
                                              defaultVerticalAlignment:
                                                  TableCellVerticalAlignment
                                                      .middle,
                                              border: TableBorder.all(
                                                  color: Colors.black),
                                              children: List<TableRow>.generate(
                                                controller
                                                    .academicTimeTable.length,
                                                (index) {
                                                  return TableRow(
                                                    children: [
                                                      Text(
                                                        controller
                                                            .academicTimeTable[
                                                                index]
                                                            .title
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      IconButton(
                                                        onPressed: () {
                                                          html.window.open(
                                                              controller
                                                                  .academicTimeTable[
                                                                      index]
                                                                  .facultyTimetable
                                                                  .toString(),
                                                              "_blank");
                                                        },
                                                        icon: Icon(
                                                          Icons.picture_as_pdf,
                                                          color:
                                                              Color(0xFFA41E34),
                                                        ),
                                                      ),
                                                      IconButton(
                                                        onPressed: () {
                                                          html.window.open(
                                                              controller
                                                                  .academicTimeTable[
                                                                      index]
                                                                  .classTimetable
                                                                  .toString(),
                                                              "_blank");
                                                        },
                                                        icon: Icon(
                                                          Icons.picture_as_pdf,
                                                          color:
                                                              Color(0xFFA41E34),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      : controller.selectedIndex == 4
                                          ? ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .academicCalenderData.length,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    html.window.open(
                                                        controller
                                                            .academicCalenderData[
                                                                index]
                                                            .calendarFile
                                                            .toString(),
                                                        "_blank");
                                                  },
                                                  child: Card(
                                                    margin: EdgeInsets.all(10),
                                                    color: Colors.grey[200],
                                                    elevation: 5,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Text(
                                                        controller
                                                            .academicCalenderData[
                                                                index]
                                                            .title
                                                            .toString(),
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            )
                                          : Container(
                                              child: Center(
                                                child: Text(
                                                  "No Data Available",
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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
