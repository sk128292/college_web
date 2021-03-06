import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/academic_controller.dart';
import 'dart:html' as html;

class AcademicView extends GetView<AcademicController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 100, top: 10),
        //   child: Row(
        //     children: [
        //       Text("Phone: +91 9431548372, "),
        //       SizedBox(width: 15),
        //       Text("Email: principal@rdbmm.ac.in"),
        //     ],
        //   ),
        // ),
        // automaticallyImplyLeading: false,
        // leadingWidth: 500,
        // actions: [
        //   SizedBox(width: 20),
        //   Row(
        //     children: [
        //       Row(
        //         children: [
        //           Icon(Icons.login, size: 17),
        //           SizedBox(width: 5),
        //           Text(
        //             "Login",
        //             textScaleFactor: 1,
        //             style: TextStyle(fontSize: 15),
        //           ),
        //         ],
        //       ),
        //       // SizedBox(width: 15),
        //       // Row(
        //       //   children: [
        //       //     Icon(Icons.edit, size: 17),
        //       //     SizedBox(width: 5),
        //       //     Text(
        //       //       "Signup",
        //       //       textScaleFactor: 1,
        //       //       style: TextStyle(fontSize: 15),
        //       //     ),
        //       //   ],
        //       // ),
        //       SizedBox(width: 40),
        //     ],
        //   )
        // ],
        bottom: PreferredSize(
            child: MenuBar(), preferredSize: Size.fromHeight(100.0)),
      ),
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
                          child:
                              //  controller.selectedIndex == 11
                              //     ? CustomAcademicTable(
                              //         table: List<TableRow>.generate(
                              //           controller.grievanceRedressalCell.length,
                              //           (index) {
                              //             return TableRow(
                              //               children: [
                              //                 Padding(
                              //                   padding: const EdgeInsets.all(10.0),
                              //                   child: Text(
                              //                       controller
                              //                           .grievanceRedressalCell[
                              //                               index]
                              //                           .sNo
                              //                           .toString(),
                              //                       textAlign: TextAlign.center),
                              //                 ),
                              //                 Padding(
                              //                   padding: const EdgeInsets.all(10.0),
                              //                   child: Text(
                              //                       controller
                              //                           .grievanceRedressalCell[
                              //                               index]
                              //                           .name
                              //                           .toString(),
                              //                       textAlign: TextAlign.center),
                              //                 ),
                              //                 Padding(
                              //                   padding: const EdgeInsets.all(10.0),
                              //                   child: Text(
                              //                       controller
                              //                           .grievanceRedressalCell[
                              //                               index]
                              //                           .designation
                              //                           .toString(),
                              //                       textAlign: TextAlign.center),
                              //                 ),
                              //                 Padding(
                              //                   padding: const EdgeInsets.all(10.0),
                              //                   child: Text(
                              //                       controller
                              //                           .grievanceRedressalCell[
                              //                               index]
                              //                           .mobileNumber
                              //                           .toString(),
                              //                       textAlign: TextAlign.center),
                              //                 ),
                              //               ],
                              //             );
                              //           },
                              //         ),
                              //       )
                              //     : controller.selectedIndex == 12
                              //         ? CustomAcademicTable(
                              //             table: List<TableRow>.generate(
                              //               controller.antiRaggingCell.length,
                              //               (index) {
                              //                 return TableRow(
                              //                   children: [
                              //                     Padding(
                              //                       padding:
                              //                           const EdgeInsets.all(10.0),
                              //                       child: Text(
                              //                           controller
                              //                               .antiRaggingCell[index]
                              //                               .sNo
                              //                               .toString(),
                              //                           textAlign:
                              //                               TextAlign.center),
                              //                     ),
                              //                     Padding(
                              //                       padding:
                              //                           const EdgeInsets.all(10.0),
                              //                       child: Text(
                              //                           controller
                              //                               .antiRaggingCell[index]
                              //                               .name
                              //                               .toString(),
                              //                           textAlign:
                              //                               TextAlign.center),
                              //                     ),
                              //                     Padding(
                              //                       padding:
                              //                           const EdgeInsets.all(10.0),
                              //                       child: Text(
                              //                           controller
                              //                               .antiRaggingCell[index]
                              //                               .designation
                              //                               .toString(),
                              //                           textAlign:
                              //                               TextAlign.center),
                              //                     ),
                              //                     Padding(
                              //                       padding:
                              //                           const EdgeInsets.all(10.0),
                              //                       child: Text(
                              //                           controller
                              //                               .antiRaggingCell[index]
                              //                               .mobileNumber
                              //                               .toString(),
                              //                           textAlign:
                              //                               TextAlign.center),
                              //                     ),
                              //                   ],
                              //                 );
                              //               },
                              //             ),
                              //           )
                              //         : controller.selectedIndex == 13
                              //             ? CustomAcademicTable(
                              //                 table: List<TableRow>.generate(
                              //                   controller
                              //                       .womenandSexualHarassmentCell
                              //                       .length,
                              //                   (index) {
                              //                     return TableRow(
                              //                       children: [
                              //                         Padding(
                              //                           padding:
                              //                               const EdgeInsets.all(
                              //                                   10.0),
                              //                           child: Text(
                              //                               controller
                              //                                   .womenandSexualHarassmentCell[
                              //                                       index]
                              //                                   .sNo
                              //                                   .toString(),
                              //                               textAlign:
                              //                                   TextAlign.center),
                              //                         ),
                              //                         Padding(
                              //                           padding:
                              //                               const EdgeInsets.all(
                              //                                   10.0),
                              //                           child: Text(
                              //                               controller
                              //                                   .womenandSexualHarassmentCell[
                              //                                       index]
                              //                                   .name
                              //                                   .toString(),
                              //                               textAlign:
                              //                                   TextAlign.center),
                              //                         ),
                              //                         Padding(
                              //                           padding:
                              //                               const EdgeInsets.all(
                              //                                   10.0),
                              //                           child: Text(
                              //                               controller
                              //                                   .womenandSexualHarassmentCell[
                              //                                       index]
                              //                                   .designation
                              //                                   .toString(),
                              //                               textAlign:
                              //                                   TextAlign.center),
                              //                         ),
                              //                         Padding(
                              //                           padding:
                              //                               const EdgeInsets.all(
                              //                                   10.0),
                              //                           child: Text(
                              //                               controller
                              //                                   .womenandSexualHarassmentCell[
                              //                                       index]
                              //                                   .mobileNumber
                              //                                   .toString(),
                              //                               textAlign:
                              //                                   TextAlign.center),
                              //                         ),
                              //                       ],
                              //                     );
                              //                   },
                              //                 ),
                              //               )
                              //             : controller.selectedIndex == 14
                              //                 ? CustomAcademicTable(
                              //                     table: List<TableRow>.generate(
                              //                       controller.ecoClub.length,
                              //                       (index) {
                              //                         return TableRow(
                              //                           children: [
                              //                             Padding(
                              //                               padding:
                              //                                   const EdgeInsets
                              //                                       .all(10.0),
                              //                               child: Text(
                              //                                   controller
                              //                                       .ecoClub[index]
                              //                                       .sNo
                              //                                       .toString(),
                              //                                   textAlign: TextAlign
                              //                                       .center),
                              //                             ),
                              //                             Padding(
                              //                               padding:
                              //                                   const EdgeInsets
                              //                                       .all(10.0),
                              //                               child: Text(
                              //                                   controller
                              //                                       .ecoClub[index]
                              //                                       .name
                              //                                       .toString(),
                              //                                   textAlign: TextAlign
                              //                                       .center),
                              //                             ),
                              //                             Padding(
                              //                               padding:
                              //                                   const EdgeInsets
                              //                                       .all(10.0),
                              //                               child: Text(
                              //                                   controller
                              //                                       .ecoClub[index]
                              //                                       .designation
                              //                                       .toString(),
                              //                                   textAlign: TextAlign
                              //                                       .center),
                              //                             ),
                              //                             Padding(
                              //                               padding:
                              //                                   const EdgeInsets
                              //                                       .all(10.0),
                              //                               child: Text(
                              //                                   controller
                              //                                       .ecoClub[index]
                              //                                       .mobileNumber
                              //                                       .toString(),
                              //                                   textAlign: TextAlign
                              //                                       .center),
                              //                             ),
                              //                           ],
                              //                         );
                              //                       },
                              //                     ),
                              //                   )
                              //                 :
                              controller.selectedIndex == 3
                                  ? Column(
                                      children: [
                                        Table(
                                          columnWidths: {
                                            0: FlexColumnWidth(3),
                                            1: FlexColumnWidth(2),
                                            2: FlexColumnWidth(2),
                                          },
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              color: Colors.black),
                                          children: [
                                            TableRow(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child: Text(
                                                    "Departmment",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(15.0),
                                                  child: Text(
                                                    "Faculty Time Table",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(15.0),
                                                  child: Text(
                                                    "Class Time Table",
                                                    textAlign: TextAlign.center,
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
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              color: Colors.black),
                                          children: List<TableRow>.generate(
                                            controller.academicTimeTable.length,
                                            (index) {
                                              return TableRow(
                                                children: [
                                                  Text(
                                                    controller
                                                        .academicTimeTable[
                                                            index]
                                                        .title
                                                        .toString(),
                                                    textAlign: TextAlign.center,
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
                                                      color: Color(0xFFA41E34),
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
                                                      color: Color(0xFFA41E34),
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
                                                  padding: const EdgeInsets.all(
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
                                      // : controller.selectedIndex ==
                                      //         18
                                      //     ? ListView.builder(
                                      //         shrinkWrap: true,
                                      //         itemCount: controller
                                      //             .academicExellanceData
                                      //             .length,
                                      //         itemBuilder:
                                      //             (context, index) {
                                      //           return InkWell(
                                      //             onTap: () {
                                      //               html.window.open(
                                      //                   controller
                                      //                       .academicExellanceData[
                                      //                           index]
                                      //                       .calendarFile
                                      //                       .toString(),
                                      //                   "_blank");
                                      //             },
                                      //             child: Card(
                                      //               margin:
                                      //                   EdgeInsets
                                      //                       .all(
                                      //                           10),
                                      //               color: Colors
                                      //                   .grey[200],
                                      //               elevation: 5,
                                      //               child: Padding(
                                      //                 padding:
                                      //                     const EdgeInsets
                                      //                             .all(
                                      //                         10.0),
                                      //                 child: Text(
                                      //                   controller
                                      //                       .academicExellanceData[
                                      //                           index]
                                      //                       .title
                                      //                       .toString(),
                                      //                   style:
                                      //                       TextStyle(
                                      //                     fontSize:
                                      //                         20,
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           );
                                      //         },
                                      //       )
                                      : controller.selectedIndex == 1
                                          ? ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .cbcsRuleRegulationData
                                                  .length,
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
                                                          const EdgeInsets.all(
                                                              10.0),
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
