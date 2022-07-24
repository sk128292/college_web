import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:college_web/app/modules/widgets/custom_drawer.dart';
import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/modules/widgets/responsive.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:marquee_widget/marquee_widget.dart';
import '../controllers/home_controller.dart';
import 'dart:html' as html;

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    // WidgetsBinding.instance!
    //     .addPostFrameCallback((_) => controller.scrollToBottom());
    final List<Widget> imageSliders = controller.imgList
        .map((item) => Container(
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(item),
                    fit: BoxFit.cover,
                    width: isDesktop
                        ? MediaQuery.of(context).size.width * .5
                        : MediaQuery.of(context).size.width,
                    height: isDesktop
                        ? MediaQuery.of(context).size.height * .9
                        : MediaQuery.of(context).size.height,
                  ),
                  Container(
                    width: isDesktop
                        ? MediaQuery.of(context).size.width * .5
                        : MediaQuery.of(context).size.width,
                    height: isDesktop
                        ? MediaQuery.of(context).size.height * .9
                        : MediaQuery.of(context).size.height,
                    color: Colors.black.withOpacity(.5),
                    padding: EdgeInsets.only(bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "EXPERIENCE RDBMM",
                          textScaleFactor: 1,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Life On Campus",
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
                                "EXPLORE RDBMM",
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
            ))
        .toList();

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
            Row(
              children: [
                Container(
                    width: isDesktop
                        ? MediaQuery.of(context).size.width * .5
                        : Get.width,
                    height: isDesktop
                        ? MediaQuery.of(context).size.height * .9
                        : 300,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          controller.currentPosition.value = index;
                        },
                        // aspectRatio: 2.5,
                        viewportFraction: 1,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(seconds: 1),
                        autoPlayCurve: Curves.easeIn,
                      ),
                      items: imageSliders,
                    )),
                isDesktop
                    ? Container(
                        width: Get.width * .5,
                        height: Get.height * .9,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Intermediate.gif"),
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
                                "ADMISSION",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Step through our doors",
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
                                  html.window.open(
                                      "https://www.rdbmcollegedeoghar.in",
                                      "_blank");
                                },
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 35),
                                color: Color(0xFFA41E34),
                                height: 50,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Apply",
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
                      )
                    : Container(),
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
                          fontSize: isDesktop ? 20 : 18,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.goToNotificationPage();
                        },
                        child: Container(
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
                              fontSize: isDesktop ? 16 : 14,
                            ),
                          ),
                        ),
                      ),
                      Obx(
                        () => controller.startLoading.isFalse
                            ? Container(
                                width: Get.width,
                                height: 50,
                                padding: EdgeInsets.only(top: 20),
                                child: ListView.builder(
                                  itemCount: controller.notificationData.length,
                                  // itemCount: _listViewData.length,
                                  controller: controller.scrollController,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        controller.notificationData[index].title
                                            .toString()
                                            .toUpperCase(),
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            : Center(
                                child: CircularProgressIndicator(
                                  color: Colors.redAccent,
                                ),
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
                            height: MediaQuery.of(context).size.height * .4,
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
                                      fontSize: isDesktop ? 15 : 13,
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
                                      fontSize: isDesktop ? 30 : 22,
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
                                  height:
                                      MediaQuery.of(context).size.height * .3,
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
                                            fontSize: isDesktop ? 15 : 13,
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
                                            fontSize: isDesktop ? 30 : 22,
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
                                  height:
                                      MediaQuery.of(context).size.height * .3,
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
                                            fontSize: isDesktop ? 15 : 13,
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
                                            fontSize: isDesktop ? 30 : 22,
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
                  isDesktop
                      ? Expanded(
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 35),
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
                        )
                      : Container(),
                ],
              ),
            ),
            isDesktop
                ? Container()
                : Column(
                    children: [
                      Text(
                        "Rama Devi Bajla Mahila Mahavidyalaya",
                        textScaleFactor: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Our faculty lead students to reach further, to achieve their goals and to effect change in the professions and passions they pursue.",
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                            height: 1,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 20)
                    ],
                  ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.black,
              child: Padding(
                padding: isDesktop
                    ? EdgeInsets.symmetric(vertical: 60)
                    : EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(
                      "The RDBM Experience & News",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isDesktop ? 50 : 22,
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
                          fontSize: isDesktop ? 16 : 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isDesktop
                ? Container(
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
                                          image:
                                              AssetImage("assets/college1.jpg"),
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
                  )
                : Container(
                    padding: EdgeInsets.all(15),
                    color: Color(0xFF5B6671),
                    child: Column(
                      children: [
                        Text(
                          " COLLEGE NEWS",
                          textScaleFactor: 1,
                          style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Experience RDBM",
                          textScaleFactor: 1,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "RDBM values the life of the mind—teaching exploration and reflection. These stories show how our community exemplifies the best of a liberal arts experience.",
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                            height: 1.4,
                          ),
                        ),
                        Container(
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
                                        image:
                                            AssetImage("assets/college1.jpg"),
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
                        Container(
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
                      ],
                    ),
                  ),
            Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Some Importants Link",
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: isDesktop ? 40 : 22,
                  ),
                ),
              ),
            ),
            Marquee(
              pauseDuration: Duration(seconds: 3),
              forwardAnimation: Curves.easeIn,
              textDirection: TextDirection.ltr,
              directionMarguee: DirectionMarguee.oneDirection,
              animationDuration: Duration(seconds: 20),
              child: Container(
                width: 3000,
                child: Container(
                  height: isDesktop ? 300 : 200,
                  child: Row(
                    children: List.generate(controller.importantLinks.length,
                        (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 50),
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                html.window.open(
                                    controller.importantLinks[index]["link"]
                                        .toString(),
                                    "_blank");
                              },
                              child: Container(
                                width: isDesktop ? 300 : 150,
                                height: isDesktop ? 150 : 80,
                                child: Image(
                                  image: AssetImage(
                                    controller.importantLinks[index]["image"]
                                        .toString(),
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.importantLinks[index]["name"]
                                    .toString(),
                                style: TextStyle(
                                    fontSize: isDesktop ? 16 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
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
