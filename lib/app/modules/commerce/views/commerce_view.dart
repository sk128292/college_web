import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/commerce_controller.dart';

class CommerceView extends GetView<CommerceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA41E34),
        leading: Padding(
          padding: const EdgeInsets.only(left: 100, top: 15),
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.HOME);
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
          Row(
            children: [
              InkWell(
                onTap: () {
                  controller.goToLearningPortalPage();
                },
                child: Row(
                  children: [
                    Icon(Icons.map, size: 17),
                    SizedBox(width: 5),
                    Text(
                      "LEARNING PORTAL",
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Icon(Icons.edit, size: 17),
                  SizedBox(width: 5),
                  Text(
                    "APPLY",
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  controller.goToAboutUsPage();
                },
                child: Row(
                  children: [
                    Icon(Icons.mail, size: 17),
                    SizedBox(width: 5),
                    Text(
                      "ABOUT US",
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Icon(Icons.login, size: 17),
                  SizedBox(width: 5),
                  Text(
                    "LOGIN",
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Icon(Icons.create, size: 17),
                  SizedBox(width: 5),
                  Text(
                    "SIGNUP",
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 30),
              height: Get.height * .7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/about.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "MEET RDBM",
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              color: Colors.black.withOpacity(.8),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/facebook.png",
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/instagram.png",
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/linkedin.png",
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/twitter.png",
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/whatsapp.png",
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/youtube.png",
                        height: 30,
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 4,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "About Us",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Carreer",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Press Center",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "History",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Campus",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 4,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Academic Sol",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Goverment Sol",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Infrastructure",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Library",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Study",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 4,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Admission",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Getting Started",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Policy",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Information",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact Us",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 4,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Phone Directory",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Support",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "FAQ",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Reach Us",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    "Copyright @ 2022 All right reserved",
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
