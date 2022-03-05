import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/science_controller.dart';

class ScienceView extends GetView<ScienceController> {
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
            Container(
              height: Get.height * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/science_bg1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                // color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.only(left: 40, bottom: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Science",
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Color(0xFFA41E34),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * .63,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 40),
                        child: Text(
                          "Science is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence.",
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
                        // width: Get.width * .65,
                        child: Text(
                          "New knowledge in science is advanced by research from scientists who are motivated by curiosity about the world and a desire to solve problems.[33][34] Contemporary scientific research is highly collaborative and is usually done by teams in academic and research institutions,[35] government agencies, and companies.[36][37] The practical impact of their work has led to the emergence of science policies that seek to influence the scientific enterprise by prioritizing the development of commercial products, armaments, health care, public infrastructure, and environmental protection.",
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
                        // width: Get.width * .65,
                        child: Text(
                          "Science can be divided into different branches based on the subject of study. The physical sciences study the inorganic world and comprise the fields of astronomy, physics, chemistry, and the Earth sciences. ",
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
                ),
                Container(
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
                      itemCount: controller.subjects.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.subjects[index].toString(),
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
                              padding:
                                  const EdgeInsets.only(top: 17, bottom: 17),
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
              ],
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
