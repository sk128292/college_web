import 'package:college_web/app/modules/widgets/custom_drawer.dart';
import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/modules/widgets/responsive.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/art_controller.dart';

class ArtView extends GetView<ArtController> {
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
                FooterWidget(),
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
