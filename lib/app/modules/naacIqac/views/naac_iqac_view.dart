import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'dart:html' as html;

import '../controllers/naac_iqac_controller.dart';

class NaacIqacView extends GetView<NaacIqacController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  image: AssetImage("assets/naac.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.only(left: 40, bottom: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "NAAC & IQAC",
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
                Obx(
                  () => Container(
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.activateNaac();
                                  controller.selectedIndex.value = 0;
                                },
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: controller.naacActive.isTrue
                                          ? Color(0xFFA41E34)
                                          : Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: controller.naacActive.isTrue
                                        ? Color(0xFFA41E34)
                                        : Colors.white,
                                  ),
                                  child: Text(
                                    "NAAC",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: controller.naacActive.isTrue
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.activateIqac();
                                  controller.selectedIndex.value = 0;
                                },
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: controller.naacActive.isTrue
                                          ? Colors.black
                                          : Color(0xFFA41E34),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: controller.naacActive.isTrue
                                        ? Colors.white
                                        : Color(0xFFA41E34),
                                  ),
                                  child: Text(
                                    "IQAC",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: controller.naacActive.isTrue
                                          ? Colors.black
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Obx(
                          () => controller.naacActive.isTrue
                              ? Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: controller.naacList.length,
                                    itemBuilder: (context, index) {
                                      return Obx(
                                        () => Container(
                                          padding: EdgeInsets.all(8),
                                          margin: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              width: 1,
                                              color: index ==
                                                      controller
                                                          .selectedIndex.value
                                                  ? Color(0xFFA41E34)
                                                  : Colors.black,
                                            ),
                                            color: index ==
                                                    controller
                                                        .selectedIndex.value
                                                ? Color(0xFFA41E34)
                                                : Colors.white,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              controller.changeIndex(index);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  controller.naacList[index]
                                                      ["name"],
                                                  style: TextStyle(
                                                    color: index ==
                                                            controller
                                                                .selectedIndex
                                                                .value
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: index ==
                                                          controller
                                                              .selectedIndex
                                                              .value
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
                              : Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: controller.iqacList.length,
                                    itemBuilder: (context, index) {
                                      return Obx(
                                        () => InkWell(
                                          onTap: () {
                                            controller.changeIndex(index);
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(8),
                                            margin: EdgeInsets.all(3),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                width: 1,
                                                color: index ==
                                                        controller
                                                            .selectedIndex.value
                                                    ? Color(0xFFA41E34)
                                                    : Colors.black,
                                              ),
                                              color: index ==
                                                      controller
                                                          .selectedIndex.value
                                                  ? Color(0xFFA41E34)
                                                  : Colors.white,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  controller.iqacList[index]
                                                      ["name"],
                                                  style: TextStyle(
                                                    color: index ==
                                                            controller
                                                                .selectedIndex
                                                                .value
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: index ==
                                                          controller
                                                              .selectedIndex
                                                              .value
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
                                ),
                        ),
                      ],
                    ),
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
                    child: Obx(
                      () => SingleChildScrollView(
                        child: controller.naacActive.isTrue
                            ? Container(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    controller.selectedIndex == 0
                                        ? ListView.builder(
                                            shrinkWrap: true,
                                            itemCount:
                                                controller.cssrNaacData.length,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                onTap: () {
                                                  html.window.open(
                                                      controller
                                                          .cssrNaacData[index]
                                                          .uploadSsr
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
                                                          .cssrNaacData[index]
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
                                        : controller.selectedIndex == 1
                                            ? ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .aqarNaacData.length,
                                                itemBuilder: (context, index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      html.window.open(
                                                          controller
                                                              .aqarNaacData[
                                                                  index]
                                                              .uploadSsr
                                                              .toString(),
                                                          "_blank");
                                                    },
                                                    child: Card(
                                                      margin:
                                                          EdgeInsets.all(10),
                                                      color: Colors.grey[200],
                                                      elevation: 5,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Text(
                                                          controller
                                                              .aqarNaacData[
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
                                            : controller.selectedIndex == 2
                                                ? ListView.builder(
                                                    shrinkWrap: true,
                                                    itemCount: controller
                                                        .csssNaacData.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return InkWell(
                                                        onTap: () {
                                                          html.window.open(
                                                              controller
                                                                  .csssNaacData[
                                                                      index]
                                                                  .sssUpload
                                                                  .toString(),
                                                              "_blank");
                                                        },
                                                        child: Card(
                                                          margin:
                                                              EdgeInsets.all(
                                                                  10),
                                                          color:
                                                              Colors.grey[200],
                                                          elevation: 5,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Text(
                                                              controller
                                                                  .csssNaacData[
                                                                      index]
                                                                  .sssTitle
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                  ],
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.all(15),
                                child: controller.selectedIndex == 0
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller
                                                .aboutIqacData[0].aboutTitle,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            controller
                                                .aboutIqacData[0].aboutIqac,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      )
                                    : controller.selectedIndex == 1
                                        ? ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .calenderIqacData.length,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                onTap: () {
                                                  html.window.open(
                                                      controller
                                                          .calenderIqacData[
                                                              index]
                                                          .calenderFile
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
                                                          .calenderIqacData[
                                                              index]
                                                          .calenderTitle
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
                                        : controller.selectedIndex == 2
                                            ? ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .notificationIqacData
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  return InkWell(
                                                    onTap: () {
                                                      html.window.open(
                                                          controller
                                                              .notificationIqacData[
                                                                  index]
                                                              .notificationFile
                                                              .toString(),
                                                          "_blank");
                                                    },
                                                    child: Card(
                                                      margin:
                                                          EdgeInsets.all(10),
                                                      color: Colors.grey[200],
                                                      elevation: 5,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Text(
                                                          controller
                                                              .notificationIqacData[
                                                                  index]
                                                              .notificationTitle,
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
                                                ? ListView.builder(
                                                    shrinkWrap: true,
                                                    itemCount: controller
                                                        .compositionIqacData
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return InkWell(
                                                        onTap: () {
                                                          html.window.open(
                                                              controller
                                                                  .compositionIqacData[
                                                                      index]
                                                                  .compositionFile
                                                                  .toString(),
                                                              "_blank");
                                                        },
                                                        child: Card(
                                                          margin:
                                                              EdgeInsets.all(
                                                                  10),
                                                          color:
                                                              Colors.grey[200],
                                                          elevation: 5,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Text(
                                                              controller
                                                                  .compositionIqacData[
                                                                      index]
                                                                  .compostionTitle,
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  )
                                                : controller.selectedIndex == 4
                                                    ? Column(
                                                        children: [
                                                          Table(
                                                            columnWidths: {
                                                              0: FlexColumnWidth(
                                                                  1),
                                                              1: FlexColumnWidth(
                                                                  4),
                                                              2: FlexColumnWidth(
                                                                  1),
                                                            },
                                                            defaultVerticalAlignment:
                                                                TableCellVerticalAlignment
                                                                    .middle,
                                                            border:
                                                                TableBorder.all(
                                                                    color: Colors
                                                                        .black),
                                                            children: [
                                                              TableRow(
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            15),
                                                                    child: Text(
                                                                      "S No.",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            22,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            15.0),
                                                                    child: Text(
                                                                      "Particulars",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            22,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            15.0),
                                                                    child: Text(
                                                                      "Pdf File",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            22,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Table(
                                                            columnWidths: {
                                                              0: FlexColumnWidth(
                                                                  1),
                                                              1: FlexColumnWidth(
                                                                  4),
                                                              2: FlexColumnWidth(
                                                                  1),
                                                            },
                                                            defaultVerticalAlignment:
                                                                TableCellVerticalAlignment
                                                                    .middle,
                                                            border:
                                                                TableBorder.all(
                                                                    color: Colors
                                                                        .black),
                                                            children: List<
                                                                TableRow>.generate(
                                                              controller
                                                                  .aqarIqacData
                                                                  .length,
                                                              (index) {
                                                                return TableRow(
                                                                  children: [
                                                                    Text(
                                                                        "${controller.aqarIqacData[index].aqarSNo.toString()}.",
                                                                        textAlign:
                                                                            TextAlign.center),
                                                                    Text(
                                                                        controller
                                                                            .aqarIqacData[
                                                                                index]
                                                                            .aqarParticular,
                                                                        textAlign:
                                                                            TextAlign.center),
                                                                    IconButton(
                                                                      onPressed:
                                                                          () {
                                                                        html.window.open(
                                                                            controller.aqarIqacData[index].aqarUpload.toString(),
                                                                            "_blank");
                                                                      },
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .picture_as_pdf,
                                                                        color: Color(
                                                                            0xFFA41E34),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    : controller.selectedIndex ==
                                                            5
                                                        ? Column(
                                                            children: [
                                                              Card(
                                                                color: Colors
                                                                    .grey[200],
                                                                elevation: 5,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child: Text(
                                                                    "Minutes of IQAC Meetings",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 1.5,
                                                                height: 25,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              Card(
                                                                color: Colors
                                                                    .grey[200],
                                                                elevation: 5,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child: Text(
                                                                    "Academic year",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 1.5,
                                                                height: 25,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .black),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                ),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceAround,
                                                                  children: List
                                                                      .generate(
                                                                    controller
                                                                        .sessionList
                                                                        .length,
                                                                    (index) {
                                                                      return Obx(
                                                                        () =>
                                                                            InkWell(
                                                                          onTap:
                                                                              () {
                                                                            controller.changeSession(index);
                                                                          },
                                                                          child:
                                                                              Card(
                                                                            color: controller.selectedSession.value == index
                                                                                ? Color(0xFFA41E34)
                                                                                : Colors.grey[200],
                                                                            elevation:
                                                                                5,
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(10.0),
                                                                              child: Text(
                                                                                controller.sessionList[index]["session"],
                                                                                style: TextStyle(
                                                                                  fontSize: 20,
                                                                                  color: controller.selectedSession.value == index ? Colors.white : Colors.black,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 30),
                                                              Table(
                                                                columnWidths: {
                                                                  0: FlexColumnWidth(
                                                                      1),
                                                                  1: FlexColumnWidth(
                                                                      4),
                                                                  2: FlexColumnWidth(
                                                                      1),
                                                                },
                                                                defaultVerticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                border: TableBorder.all(
                                                                    color: Colors
                                                                        .black),
                                                                children: [
                                                                  TableRow(
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.all(15),
                                                                        child:
                                                                            Text(
                                                                          "Meeting No.",
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                22,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.all(15.0),
                                                                        child:
                                                                            Text(
                                                                          "Meeting Held on",
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                22,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.all(15.0),
                                                                        child:
                                                                            Text(
                                                                          "Pdf File",
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                22,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Table(
                                                                columnWidths: {
                                                                  0: FlexColumnWidth(
                                                                      1),
                                                                  1: FlexColumnWidth(
                                                                      4),
                                                                  2: FlexColumnWidth(
                                                                      1),
                                                                },
                                                                defaultVerticalAlignment:
                                                                    TableCellVerticalAlignment
                                                                        .middle,
                                                                border: TableBorder.all(
                                                                    color: Colors
                                                                        .black),
                                                                children: List<
                                                                    TableRow>.generate(
                                                                  controller
                                                                      .meetingIqacData
                                                                      .length,
                                                                  (index) {
                                                                    return TableRow(
                                                                      children: [
                                                                        Text(
                                                                            "${controller.meetingIqacData[index].meetingNo.toString()}.",
                                                                            textAlign:
                                                                                TextAlign.center),
                                                                        Text(
                                                                            controller.meetingIqacData[index].heldOn,
                                                                            textAlign: TextAlign.center),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {
                                                                            html.window.open(controller.meetingIqacData[index].minutesOfIqacMeetingFile.toString(),
                                                                                "_blank");
                                                                          },
                                                                          icon: Icon(
                                                                              Icons.picture_as_pdf,
                                                                              color: Color(0xFFA41E34)),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        // : controller.selectedIndex ==
                                                        //         8
                                                        //     ? ListView.builder(
                                                        //         shrinkWrap:
                                                        //             true,
                                                        //         itemCount:
                                                        //             controller
                                                        //                 .departmentIqacData
                                                        //                 .length,
                                                        //         itemBuilder:
                                                        //             (context,
                                                        //                 index) {
                                                        //           return InkWell(
                                                        //             onTap:
                                                        //                 () {},
                                                        //             child: Card(
                                                        //               margin: EdgeInsets
                                                        //                   .all(
                                                        //                       10),
                                                        //               color: Colors
                                                        //                       .grey[
                                                        //                   200],
                                                        //               elevation:
                                                        //                   5,
                                                        //               child:
                                                        //                   Padding(
                                                        //                 padding:
                                                        //                     const EdgeInsets.all(10.0),
                                                        //                 child:
                                                        //                     Text(
                                                        //                   controller
                                                        //                       .departmentIqacData[index]
                                                        //                       .departmentName,
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
                                                        : Container(
                                                            child: Center(
                                                              child: Text(
                                                                "No Data Available",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 40,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
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
