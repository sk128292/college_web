import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'dart:html' as html;

import '../controllers/learning_portal_controller.dart';

class LearningPortalView extends GetView<LearningPortalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA41E34),
        leading: Padding(
          padding: const EdgeInsets.only(left: 100, top: 15),
          child: InkWell(
            onTap: () {
              controller.goToHomePage();
            },
            child: Text(
              "RDBM College",
              textScaleFactor: 1,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 400,
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
              height: Get.height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/reading.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.only(left: 40, bottom: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Learning Portal",
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
              () => Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.learningPortalData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        html.window.open(
                            controller.learningPortalData[index].uploadBook,
                            "_blank");
                      },
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              controller.learningPortalData[index].title +
                                  ", " +
                                  controller
                                      .learningPortalData[index].subjectCore,
                              // "Free Jobs Aleart, all over india",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    );
                  },
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
