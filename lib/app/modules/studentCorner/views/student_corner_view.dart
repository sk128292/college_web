import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'dart:html' as html;

import '../controllers/student_corner_controller.dart';

class StudentCornerView extends GetView<StudentCornerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          child: MenuBar(),
          preferredSize: Size.fromHeight(100),
        ),
      ),
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
                    "Student Corner",
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
                          itemCount: controller.studentCornerData.length,
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
                                        controller.studentCornerData[index]
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
                        child: Obx(
                          () => controller.selectedIndex == 0
                              ? Column(
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          controller.learningPortalData.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            html.window.open(
                                                controller
                                                    .learningPortalData[index]
                                                    .uploadBook,
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
                                                        .learningPortalData[
                                                            index]
                                                        .title +
                                                    ", " +
                                                    controller
                                                        .learningPortalData[
                                                            index]
                                                        .subjectCore,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                )
                              : controller.selectedIndex == 1
                                  ? Column(
                                      children: [
                                        Table(
                                          columnWidths: {
                                            0: FlexColumnWidth(1),
                                            1: FlexColumnWidth(4),
                                            2: FlexColumnWidth(1),
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
                                                    "S No.",
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
                                                    "Subject Name",
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
                                                    "Download",
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
                                            0: FlexColumnWidth(1),
                                            1: FlexColumnWidth(4),
                                            2: FlexColumnWidth(1),
                                          },
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: TableBorder.all(
                                              color: Colors.black),
                                          children: List<TableRow>.generate(
                                            controller.syllabus.length,
                                            (index) {
                                              return TableRow(
                                                children: [
                                                  Text(
                                                      "${controller.syllabus[index].aqarSNo.toString()}.",
                                                      textAlign:
                                                          TextAlign.center),
                                                  Text(
                                                      controller.syllabus[index]
                                                          .aqarParticular,
                                                      textAlign:
                                                          TextAlign.center),
                                                  IconButton(
                                                    onPressed: () {
                                                      html.window.open(
                                                          controller
                                                              .syllabus[index]
                                                              .aqarUpload
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
                                  :
                                  // :
                                  // controller.selectedIndex == 1
                                  //     ? Column(
                                  //         children: [
                                  //           ListView.builder(
                                  //             shrinkWrap: true,
                                  //             itemCount: controller.science.length,
                                  //             itemBuilder: (context, index) {
                                  //               return InkWell(
                                  //                 onTap: () {
                                  //                   // html.window.open("wwwww", "_blank");
                                  //                 },
                                  //                 child: Card(
                                  //                   margin: EdgeInsets.all(10),
                                  //                   color: Colors.grey[200],
                                  //                   elevation: 5,
                                  //                   child: Padding(
                                  //                     padding: const EdgeInsets.all(
                                  //                         10.0),
                                  //                     child: Text(
                                  //                       controller.science[index]
                                  //                           .toString(),
                                  //                       style: TextStyle(
                                  //                         fontSize: 20,
                                  //                       ),
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               );
                                  //             },
                                  //           ),
                                  //         ],
                                  //       )
                                  //     : controller.selectedIndex == 2
                                  //         ? Column(
                                  //             children: [
                                  //               ListView.builder(
                                  //                 shrinkWrap: true,
                                  //                 itemCount:
                                  //                     controller.commerce.length,
                                  //                 itemBuilder: (context, index) {
                                  //                   return InkWell(
                                  //                     onTap: () {
                                  //                       // html.window.open("wwwww", "_blank");
                                  //                     },
                                  //                     child: Card(
                                  //                       margin: EdgeInsets.all(10),
                                  //                       color: Colors.grey[200],
                                  //                       elevation: 5,
                                  //                       child: Padding(
                                  //                         padding:
                                  //                             const EdgeInsets.all(
                                  //                                 10.0),
                                  //                         child: Text(
                                  //                           controller
                                  //                               .commerce[index]
                                  //                               .toString(),
                                  //                           style: TextStyle(
                                  //                             fontSize: 20,
                                  //                           ),
                                  //                         ),
                                  //                       ),
                                  //                     ),
                                  //                   );
                                  //                 },
                                  //               ),
                                  //             ],
                                  //           )
                                  //         : controller.selectedIndex == 3
                                  //             ? Column(
                                  //                 children: [
                                  //                   ListView.builder(
                                  //                     shrinkWrap: true,
                                  //                     itemCount: controller
                                  //                         .humanities.length,
                                  //                     itemBuilder:
                                  //                         (context, index) {
                                  //                       return InkWell(
                                  //                         onTap: () {
                                  //                           // html.window.open("wwwww", "_blank");
                                  //                         },
                                  //                         child: Card(
                                  //                           margin:
                                  //                               EdgeInsets.all(10),
                                  //                           color: Colors.grey[200],
                                  //                           elevation: 5,
                                  //                           child: Padding(
                                  //                             padding:
                                  //                                 const EdgeInsets
                                  //                                     .all(10.0),
                                  //                             child: Text(
                                  //                               controller
                                  //                                   .humanities[
                                  //                                       index]
                                  //                                   .toString(),
                                  //                               style: TextStyle(
                                  //                                 fontSize: 20,
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                       );
                                  //                     },
                                  //                   ),
                                  //                 ],
                                  //               )
                                  Container(
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
