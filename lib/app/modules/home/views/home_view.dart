import 'dart:ui';

import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
              "RDBM Mahavidyalaya",
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
            Row(
              children: [
                Container(
                  width: Get.width * .5,
                  height: Get.height * .9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/college1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(.5),
                    padding: EdgeInsets.only(bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "ADMISSION",
                          textScaleFactor: 1,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Step Through Our Doors",
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        MaterialButton(
                          onPressed: () {
                            Get.toNamed(Routes.ABOUT_US);
                          },
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 35),
                          color: Color(0xFFA41E34),
                          height: 50,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "EXPLORE RDBM",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width * .5,
                  height: Get.height * .9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/college2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 50),
                    color: Colors.black.withOpacity(.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "EXPERIENCE  RDBM",
                          textScaleFactor: 1,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Life on Campus",
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        MaterialButton(
                          onPressed: () {},
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 35),
                          color: Color(0xFFA41E34),
                          height: 50,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "EXPLORE Campus",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Color(0xFFA41E34),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    children: [
                      Text(
                        "Coronavirus (COVID-19) Updates: ",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFFA41E34),
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          "Click here for current updates and information.",
                          textScaleFactor: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        width: Get.width,
                        height: 50,
                        padding: EdgeInsets.only(top: 20),
                        child: Marquee(
                          text: "Latest New Appear Here..",
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 17,
                          ),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          blankSpace: 50.0,
                          velocity: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        InkWell(
                          onTap: () {
                            // Get.toNamed(Routes.SCIENCE);
                          },
                          child: Container(
                            height: Get.height * .4,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/science.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black.withOpacity(.5),
                              ),
                              padding: EdgeInsets.only(right: 30, bottom: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "OBSERVE & INTERACT",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Colors.grey[100],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 5,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Science",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  // Get.toNamed(Routes.ART);
                                },
                                child: Container(
                                  height: Get.height * .3,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/art.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10, top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black.withOpacity(.5),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ILLUSTRATE & ILLUMINATE",
                                          textScaleFactor: 1,
                                          style: TextStyle(
                                            color: Colors.grey[100],
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 3,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Art",
                                          textScaleFactor: 1,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  // Get.toNamed(Routes.COMMERCE);
                                },
                                child: Container(
                                  height: Get.height * .3,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/commerce.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black.withOpacity(.5),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "ANALYSE & INTERPRET",
                                          textScaleFactor: 1,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 5,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Commerce",
                                          textScaleFactor: 1,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Rama Devi Bajla Mahila Mahavidyalaya",
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Our faculty lead students to reach further, to achieve their goals and to effect change in the professions and passions they pursue.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1.5,
                              height: 1.8,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        MaterialButton(
                          onPressed: () {
                            Get.toNamed(Routes.DEPARTMENT);
                          },
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 35),
                          color: Color(0xFFA41E34),
                          height: 50,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "ALL PROGRAMS",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: [
                    Text(
                      "The RDBM Experience & News",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: Text(
                        "From rigorous academics to the beautiful greens of our tree-filled campus to the activity of student life, RDBM has it all. Switch between Live and Learn to explore everything RDBM has to offer.",
                        textScaleFactor: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: Get.height * .9,
              padding: EdgeInsets.all(20),
              color: Color(0xFF5B6671),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " COLLEGE NEWS",
                            textScaleFactor: 1,
                            style: TextStyle(
                              letterSpacing: 3,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Experience RDBM",
                            textScaleFactor: 1,
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              letterSpacing: 3,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "RDBM values the life of the mind—teaching exploration and reflection. These stories show how our community exemplifies the best of a liberal arts experience.",
                            textScaleFactor: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 3,
                              height: 2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: Get.height * .35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage("assets/college1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "A talk on management of Personal Finance",
                                textScaleFactor: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "We are pleased to inform you that the Department of Commerce in collaboration with the Association of Mutual Funds in India (AMFI)is organizing a national level webinar on A talk on management of Personal Finance Date 15.11.2021 Time 11:00 AM ",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  fontSize: 15,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          MaterialButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 35),
                            color: Color(0xFFA41E34),
                            height: 50,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "KNOW MORE",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: Get.height * .35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage("assets/news1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Women in Higher Education",
                                textScaleFactor: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "It is our pleasure to organise a webinar on Women in Higher Education. We are glad to have Dr.Surbhi Madan Department of Mathematics from Shivaji College, University of Delhi as a speaker. We cordially welcome her and are anxious to take heed .... ",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  fontSize: 15,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          MaterialButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 35),
                            color: Color(0xFFA41E34),
                            height: 50,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "KNOW MORE",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
