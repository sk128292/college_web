import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notification_controller.dart';
import 'dart:html' as html;

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA41E34),
        leading: Padding(
          padding: const EdgeInsets.only(left: 100, top: 10),
          child: Row(
            children: [
              Text("Phone: +91 9431548372,"),
              SizedBox(width: 15),
              Text("Email: principal@rdbmm.ac.in"),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 500,
        actions: [
          SizedBox(width: 20),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.login, size: 17),
                  SizedBox(width: 5),
                  Text(
                    "Login",
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              // SizedBox(width: 15),
              // Row(
              //   children: [
              //     Icon(Icons.edit, size: 17),
              //     SizedBox(width: 5),
              //     Text(
              //       "Signup",
              //       textScaleFactor: 1,
              //       style: TextStyle(fontSize: 15),
              //     ),
              //   ],
              // ),
              SizedBox(width: 40),
            ],
          )
        ],
        bottom: PreferredSize(
            child: MenuBar(), preferredSize: Size.fromHeight(20.0)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: Get.height * .25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/notification.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.only(left: 40, bottom: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Notifications",
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
            Obx(
              () => controller.startLoading.isFalse
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 100),
                      child: Column(
                        children: [
                          Table(
                            columnWidths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(2),
                              2: FlexColumnWidth(3),
                              3: FlexColumnWidth(1),
                            },
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            border: TableBorder.all(color: Colors.black),
                            children: [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Text(
                                      "Date",
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
                                      "Title",
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
                                      "Description",
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
                                      "Refrence Doc.",
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
                              2: FlexColumnWidth(3),
                              3: FlexColumnWidth(1),
                            },
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            border: TableBorder.all(color: Colors.black),
                            children: List<TableRow>.generate(
                              controller.notificationData.length,
                              (index) {
                                return TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                          controller
                                              .notificationData[index].date
                                              .toString(),
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                          controller
                                              .notificationData[index].title
                                              .toString(),
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                          controller.notificationData[index]
                                              .discription
                                              .toString(),
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: IconButton(
                                        onPressed: () {
                                          html.window.open(
                                              controller.notificationData[index]
                                                  .refrenceDocument
                                                  .toString(),
                                              "_blank");
                                        },
                                        icon: Icon(
                                          Icons.picture_as_pdf,
                                          color: Color(0xFFA41E34),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        color: Colors.redAccent,
                      ),
                    ),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
