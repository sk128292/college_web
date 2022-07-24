import 'package:college_web/app/modules/widgets/custom_academinc_table.dart';
import 'package:college_web/app/modules/widgets/custom_drawer.dart';
import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/modules/widgets/responsive.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/college_administrative_controller.dart';

class CollegeAdministrativeView
    extends GetView<CollegeAdministrativeController> {
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
                    "College Administrative",
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
                              ? CustomAcademicTable(
                                  table: List<TableRow>.generate(
                                    controller.collegeOfficers.length,
                                    (index) {
                                      return TableRow(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                                controller
                                                    .collegeOfficers[index].sNo
                                                    .toString(),
                                                textAlign: TextAlign.center),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                                controller
                                                    .collegeOfficers[index].name
                                                    .toString(),
                                                textAlign: TextAlign.center),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                                controller
                                                    .collegeOfficers[index]
                                                    .designation
                                                    .toString(),
                                                textAlign: TextAlign.center),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                                controller
                                                    .collegeOfficers[index]
                                                    .mobileNumber
                                                    .toString(),
                                                textAlign: TextAlign.center),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                )
                              : controller.selectedIndex == 1
                                  ? CustomAcademicTable(
                                      table: List<TableRow>.generate(
                                        controller.teachingStaff.length,
                                        (index) {
                                          return TableRow(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                    controller
                                                        .teachingStaff[index]
                                                        .sNo
                                                        .toString(),
                                                    textAlign:
                                                        TextAlign.center),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                    controller
                                                        .teachingStaff[index]
                                                        .name
                                                        .toString(),
                                                    textAlign:
                                                        TextAlign.center),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                    controller
                                                        .teachingStaff[index]
                                                        .department
                                                        .toString(),
                                                    textAlign:
                                                        TextAlign.center),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                    controller
                                                        .teachingStaff[index]
                                                        .mobileNumber
                                                        .toString(),
                                                    textAlign:
                                                        TextAlign.center),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    )
                                  : controller.selectedIndex == 2
                                      ? CustomAcademicTable(
                                          table: List<TableRow>.generate(
                                            controller
                                                .developmentCommitte.length,
                                            (index) {
                                              return TableRow(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Text(
                                                        controller
                                                            .developmentCommitte[
                                                                index]
                                                            .sNo
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.center),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Text(
                                                        controller
                                                            .developmentCommitte[
                                                                index]
                                                            .name
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.center),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Text(
                                                        controller
                                                            .developmentCommitte[
                                                                index]
                                                            .designation
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.center),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Text(
                                                        controller
                                                            .developmentCommitte[
                                                                index]
                                                            .mobileNumber
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.center),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        )
                                      : controller.selectedIndex == 3
                                          ? CustomAcademicTable(
                                              table: List<TableRow>.generate(
                                                controller
                                                    .purchasingCommitte.length,
                                                (index) {
                                                  return TableRow(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Text(
                                                            controller
                                                                .purchasingCommitte[
                                                                    index]
                                                                .sNo
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .center),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Text(
                                                            controller
                                                                .purchasingCommitte[
                                                                    index]
                                                                .name
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .center),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Text(
                                                            controller
                                                                .purchasingCommitte[
                                                                    index]
                                                                .designation
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .center),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Text(
                                                            controller
                                                                .purchasingCommitte[
                                                                    index]
                                                                .mobileNumber
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .center),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            )
                                          : controller.selectedIndex == 4
                                              ? CustomAcademicTable(
                                                  table:
                                                      List<TableRow>.generate(
                                                    controller
                                                        .ugcCommitte.length,
                                                    (index) {
                                                      return TableRow(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Text(
                                                                controller
                                                                    .ugcCommitte[
                                                                        index]
                                                                    .sNo
                                                                    .toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Text(
                                                                controller
                                                                    .ugcCommitte[
                                                                        index]
                                                                    .name
                                                                    .toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Text(
                                                                controller
                                                                    .ugcCommitte[
                                                                        index]
                                                                    .designation
                                                                    .toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Text(
                                                                controller
                                                                    .ugcCommitte[
                                                                        index]
                                                                    .mobileNumber
                                                                    .toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                )
                                              : controller.selectedIndex == 5
                                                  ? CustomAcademicTable(
                                                      table: List<
                                                          TableRow>.generate(
                                                        controller
                                                            .admissionCommitte
                                                            .length,
                                                        (index) {
                                                          return TableRow(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                child: Text(
                                                                    controller
                                                                        .admissionCommitte[
                                                                            index]
                                                                        .sNo
                                                                        .toString(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                child: Text(
                                                                    controller
                                                                        .admissionCommitte[
                                                                            index]
                                                                        .name
                                                                        .toString(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                child: Text(
                                                                    controller
                                                                        .admissionCommitte[
                                                                            index]
                                                                        .designation
                                                                        .toString(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                child: Text(
                                                                    controller
                                                                        .admissionCommitte[
                                                                            index]
                                                                        .mobileNumber
                                                                        .toString(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    )
                                                  : controller.selectedIndex ==
                                                          6
                                                      ? CustomAcademicTable(
                                                          table: List<
                                                              TableRow>.generate(
                                                            controller
                                                                .publicationCommitte
                                                                .length,
                                                            (index) {
                                                              return TableRow(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                    child: Text(
                                                                        controller
                                                                            .publicationCommitte[
                                                                                index]
                                                                            .sNo
                                                                            .toString(),
                                                                        textAlign:
                                                                            TextAlign.center),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                    child: Text(
                                                                        controller
                                                                            .publicationCommitte[
                                                                                index]
                                                                            .name
                                                                            .toString(),
                                                                        textAlign:
                                                                            TextAlign.center),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                    child: Text(
                                                                        controller
                                                                            .publicationCommitte[
                                                                                index]
                                                                            .designation
                                                                            .toString(),
                                                                        textAlign:
                                                                            TextAlign.center),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                    child: Text(
                                                                        controller
                                                                            .publicationCommitte[
                                                                                index]
                                                                            .mobileNumber
                                                                            .toString(),
                                                                        textAlign:
                                                                            TextAlign.center),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ),
                                                        )
                                                      : controller.selectedIndex ==
                                                              7
                                                          ? CustomAcademicTable(
                                                              table: List<
                                                                  TableRow>.generate(
                                                                controller
                                                                    .libraryCommitte
                                                                    .length,
                                                                (index) {
                                                                  return TableRow(
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(10.0),
                                                                        child: Text(
                                                                            controller.libraryCommitte[index].sNo
                                                                                .toString(),
                                                                            textAlign:
                                                                                TextAlign.center),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(10.0),
                                                                        child: Text(
                                                                            controller.libraryCommitte[index].name
                                                                                .toString(),
                                                                            textAlign:
                                                                                TextAlign.center),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(10.0),
                                                                        child: Text(
                                                                            controller.libraryCommitte[index].designation
                                                                                .toString(),
                                                                            textAlign:
                                                                                TextAlign.center),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(10.0),
                                                                        child: Text(
                                                                            controller.libraryCommitte[index].mobileNumber
                                                                                .toString(),
                                                                            textAlign:
                                                                                TextAlign.center),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ),
                                                            )
                                                          : controller.selectedIndex ==
                                                                  8
                                                              ? CustomAcademicTable(
                                                                  table: List<
                                                                      TableRow>.generate(
                                                                    controller
                                                                        .sportsCommitte
                                                                        .length,
                                                                    (index) {
                                                                      return TableRow(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Text(controller.sportsCommitte[index].sNo.toString(), textAlign: TextAlign.center),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Text(controller.sportsCommitte[index].name.toString(), textAlign: TextAlign.center),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Text(controller.sportsCommitte[index].designation.toString(), textAlign: TextAlign.center),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Text(controller.sportsCommitte[index].mobileNumber.toString(), textAlign: TextAlign.center),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  ),
                                                                )
                                                              : controller.selectedIndex ==
                                                                      9
                                                                  ? CustomAcademicTable(
                                                                      table: List<
                                                                          TableRow>.generate(
                                                                        controller
                                                                            .nss
                                                                            .length,
                                                                        (index) {
                                                                          return TableRow(
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Text(controller.nss[index].sNo.toString(), textAlign: TextAlign.center),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Text(controller.nss[index].name.toString(), textAlign: TextAlign.center),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Text(controller.nss[index].designation.toString(), textAlign: TextAlign.center),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Text(controller.nss[index].mobileNumber.toString(), textAlign: TextAlign.center),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ),
                                                                    )
                                                                  : controller.selectedIndex ==
                                                                          10
                                                                      ? CustomAcademicTable(
                                                                          table:
                                                                              List<TableRow>.generate(
                                                                            controller.ncc.length,
                                                                            (index) {
                                                                              return TableRow(
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                    child: Text(controller.ncc[index].sNo.toString(), textAlign: TextAlign.center),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                    child: Text(controller.ncc[index].name.toString(), textAlign: TextAlign.center),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                    child: Text(controller.ncc[index].designation.toString(), textAlign: TextAlign.center),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                    child: Text(controller.ncc[index].mobileNumber.toString(), textAlign: TextAlign.center),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ),
                                                                        )
                                                                      : controller.selectedIndex ==
                                                                              11
                                                                          ? Column(
                                                                              children: [
                                                                                Table(
                                                                                  columnWidths: {
                                                                                    0: FlexColumnWidth(1),
                                                                                    1: FlexColumnWidth(2),
                                                                                    2: FlexColumnWidth(2),
                                                                                    3: FlexColumnWidth(2),
                                                                                  },
                                                                                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  border: TableBorder.all(color: Colors.black),
                                                                                  children: [
                                                                                    TableRow(
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsets.all(15),
                                                                                          child: Text(
                                                                                            "SNo",
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontSize: 22,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.all(15),
                                                                                          child: Text(
                                                                                            "Name",
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontSize: 22,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.all(15.0),
                                                                                          child: Text(
                                                                                            "Concern Work",
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontSize: 22,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.all(15.0),
                                                                                          child: Text(
                                                                                            "Mobile Number",
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.bold,
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
                                                                                    0: FlexColumnWidth(1),
                                                                                    1: FlexColumnWidth(2),
                                                                                    2: FlexColumnWidth(2),
                                                                                    3: FlexColumnWidth(2),
                                                                                  },
                                                                                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                                                                  border: TableBorder.all(color: Colors.black),
                                                                                  children: List<TableRow>.generate(
                                                                                    controller.nonTeachingStaffData.length,
                                                                                    (index) {
                                                                                      return TableRow(
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.all(10.0),
                                                                                            child: Text(controller.nonTeachingStaffData[index].sNo.toString(), textAlign: TextAlign.center),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.all(10.0),
                                                                                            child: Text(controller.nonTeachingStaffData[index].name.toString(), textAlign: TextAlign.center),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.all(10.0),
                                                                                            child: Text(controller.nonTeachingStaffData[index].concernWork.toString(), textAlign: TextAlign.center),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.all(10.0),
                                                                                            child: Text(controller.nonTeachingStaffData[index].mobileNumber.toString(), textAlign: TextAlign.center),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ],
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
