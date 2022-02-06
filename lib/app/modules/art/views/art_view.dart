import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/art_controller.dart';

class ArtView extends GetView<ArtController> {
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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: Get.height * .5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/artbanner.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(.4),
                    padding: EdgeInsets.only(left: 40, bottom: 30),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Art",
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 40),
                      width: Get.width * .65,
                      child: Text(
                        "Arts Subjects can be broadly defined as an academic discipline that deals with the study of the human condition, developing critical, argumentative, and creative skills of the student. It involves methodologies that are generally analytical, critical, or speculative. The subjects offered under this stream range from humanities, visual arts, literary arts, and performing arts. ",
                        textScaleFactor: 1,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.3,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      width: Get.width * .65,
                      child: Text(
                        "Students interested in vital and research work with a creative mind and excellent communication skills can take up understandings that will offer them the development of their personalities.",
                        textScaleFactor: 1,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.3,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      width: Get.width * .65,
                      child: Text(
                        "Arts and Humanities offers a wide range of subjects from various fields from history, language and literature, performing arts to law, philosophy, religion, communication, and much more. The subjects deal with the development of analytical and critical thinking as well as general knowledge. The subjects cover all the aspects of learning of the world, society, culture, and mankind.",
                        textScaleFactor: 1,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 40, bottom: 50),
                  width: Get.width * .65,
                  child: Row(
                    children: [
                      Container(
                        height: Get.height * .35,
                        width: Get.width * .30,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/faculty.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: Get.height * .3,
                        width: Get.width * .3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "OUR FACULTY",
                              textScaleFactor: 1,
                              style: TextStyle(
                                color: Color(0xFFA41E34),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Our faculty lead students to reach further, to achieve their goals and to effect change in the professions and passions they pursue.",
                              textScaleFactor: 1,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
            Positioned(
              right: 0,
              top: Get.height * .23,
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                width: Get.width * .33,
                color: Colors.grey[200],
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFA41E34),
                      ),
                      left: BorderSide(
                        color: Color(0xFFA41E34),
                      ),
                    ),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: controller.stream.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.stream[index].toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 1.5,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17, bottom: 17),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
