import 'package:college_web/app/modules/widgets/custom_drawer.dart';
import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:college_web/app/modules/widgets/responsive.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 30),
              height: Get.height * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/about.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "MEET RDBMM",
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              // color: Color(0xFF3E6259),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Rama Devi Bajla Mahila Mahavidyalaya",
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Color(0xFFA41E34),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Rama Devi Bajala Mahila Mahavidyalaya is the first institution of higher learning opened to cater to the educational needs of women in the district of Deoghar. The town is famous for the temple of Lord Shiva and is popularly known as Baba Baidyanath Dham all over India.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      // color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "The institution encourages a progressive attitude towards learning, while keeping Indian tradition, culture and values in the foreground. Hundreds of motivated and empowered women have passed through the portals of this college and have entered various fields of life, many making a mark in our country and abroad.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      // color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "The college was established on 17th July, 1962 and was affiliated to Bhagalpur University on 1st June, 1970. In the year 1980, a special status was given to it by the Government of Bihar and it became a ‘Constituent College’ of Bhagalpur University. The college was transferred to Sido Kanhu Murmu University, Dumka in 1992, after the establishment of the said university on 10th January, 1992 which at present is in the state of Jharkhand.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      // color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "At present, the Mahavidyalaya has four Faculties – Humanities, Social Science, Science and Commerce at degree level as well as three faculties – Arts, Science and Commerce at Intermediate level. The total number of Students in the Mahavidyalaya is about 3800 – 4200 at present at Degree level. The number of students at Intermediate level is bout 2400. The college has seven regular department of Arts faculty since its establishment – namely Hindi, English, Bengali, Sanskrit, Political Science, Economics and Philosophy. Students have ample opportunities to offer Honours in subject according to their choice which help them pursue for higher studies.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      // color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "The college whose hallmark has always been Quality and Excellence, has been accredited by NAAC with ‘B’ grade in the first cycle with CGPA 2.28 in 2017.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      // color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Vision & Mission",
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Color(0xFFA41E34),
                      fontSize: Get.width * .015,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Vision of the college is to impart quality education to the girl students of this locality and to strengthen the women’s empowerment with an affordable admission fee and not charging any tuition fee. The aim of the college is to inculcate quality education in Arts, Science and Commerce to enhance the employability of the girl students and ultimately to engage the girl students in NSS activities to make them more sociable and committed to the society.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      // color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "The Mission of the college is to impart teaching in the class room both with the traditional and e-system and has adopted latest technology for the girls which will help them in their seminars and workshops. The career counselling cell has been constituted to counsel the students for various competitive examinations. The Mahavidyalaya plans to introduce skill-oriented coursers under U.G. programmes.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      // color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: Get.height * .35,
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/principle.jpg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Principal - Dr. Suchita Kumari",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                ),
                              ),
                              Text(
                                "M.A (Ph.D)",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                "Specialization : Ethics (Philosophy)",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Principal's Pen",
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color(0xFFA41E34),
                              fontSize: Get.width * .015,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "It’s a place where incredibly talented, intellectually curious students come together with extraordinary faculty to create a community of scholars that is both tightly knit and deeply engaged with the larger world.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Get.width * .011,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "I invite you to get to know Rama Devi Bajla Mahila Mahavidyalaya better by exploring the links above as well as the rest of our website. You can also keep up-to-date with what’s happening on campus through our social media accounts. While we do our best to reflect Rama Devi Bajla Mahila Mahavidyalaya’s collaborative and generous community of students, faculty, staff, and alumnae online, I highly recommend visiting the campus and finding out for yourself what makes Rama Devi Bajla Mahila Mahavidyalaya so special.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Get.width * .011,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   color: Colors.grey[400],
            //   padding: EdgeInsets.all(20),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //         flex: 4,
            //         child: Container(
            //           padding: EdgeInsets.all(10),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "History",
            //                 textScaleFactor: 1,
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: Get.width * .015,
            //                   fontWeight: FontWeight.bold,
            //                   letterSpacing: 1.5,
            //                 ),
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 "The prestigious, Bajla family of Deoghar founded this college on 17th July-1962. The main objectives were women empowerment emancipation and self-depended. Since then, it never looked back and starting with 7(Seven) students now it has achieved a huge no of students that is more then 4000(Four thousand) by arduous effort, dedication and sincerity. Now the colleges known for its quality education, discipline and excellent culture. The academic environment is student-friendly, and the teaching members use computer aided technology and emphasizes an interactive learning process. They offer individual attention and support to students through counselling, tutorial and remedial classes. The faculty members are engaged in meaningful research and acclaimed publications and some of them have been invited by universities outside the state and also the country It is a premier institution of higher education specially for woman by imparting “Intermediate” and “Under Graduate” courses not only to the students of Deoghar but also of the whole Santhal Parganas.",
            //                 textScaleFactor: 1,
            //                 textAlign: TextAlign.justify,
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: Get.width * .011,
            //                   letterSpacing: 1,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         flex: 2,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.stretch,
            //           children: [
            //             Container(
            //               height: Get.height * .3,
            //               margin: EdgeInsets.symmetric(
            //                   vertical: 10, horizontal: 10),
            //               padding: EdgeInsets.all(10),
            //               decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                   image: AssetImage("assets/history.jpg"),
            //                   fit: BoxFit.fill,
            //                 ),
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   color: Colors.grey,
            //   padding: EdgeInsets.all(20),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //         flex: 2,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.stretch,
            //           children: [
            //             Container(
            //               height: Get.height * .3,
            //               margin: EdgeInsets.symmetric(
            //                   vertical: 10, horizontal: 10),
            //               padding: EdgeInsets.all(10),
            //               decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                   image: AssetImage("assets/objective.jpg"),
            //                   fit: BoxFit.fill,
            //                 ),
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         flex: 4,
            //         child: Container(
            //           padding: EdgeInsets.all(10),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Our Objective",
            //                 textScaleFactor: 1,
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: Get.width * .015,
            //                   fontWeight: FontWeight.bold,
            //                   letterSpacing: 1.5,
            //                 ),
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 "Our objective is significantly to provide quality education in various fields so as to help all round development of the most backward students of the locality and free them from all kinds of hurdles. The student’s empowerment is made transparent in admission of students under the guide lines of the S.K.M.University. The college library purchases books and subscribes to various journals with the funds available for the student’s purpose. Previous year question papers in the form of question bank, syllabuses are kept in the library for student's reference. The career counselling cell has been constituted to counsel the students for various competitive examinations. The student's secure good marks in the university examination even some excel the other colleges in the university. Examinations are conducted as per the programme prepared by the University. Parents- Teachers – Students triangular meetings are held to assess the performance of the students. The Mahavidyalaya plans to introduce skill oriented coursers under U.G. programmes.",
            //                 textScaleFactor: 1,
            //                 textAlign: TextAlign.justify,
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: Get.width * .011,
            //                   letterSpacing: 1,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   color: Colors.grey[400],
            //   padding: EdgeInsets.all(20),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //         flex: 4,
            //         child: Container(
            //           padding: EdgeInsets.all(10),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Vision & Mission",
            //                 textScaleFactor: 1,
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: Get.width * .015,
            //                   fontWeight: FontWeight.bold,
            //                   letterSpacing: 1.5,
            //                 ),
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 "Vision of the college is to impart quality education to the girl students of this locality and to strengthen the women’s empowerment with an affordable admission fee and not charging any tuition fee. The aim of the college is to inculcate quality education in Arts, Science and Commerce to enhance the employability of the girl students and ultimately to engage the girl students in NSS activities to make them more sociable and committed to the society.",
            //                 textScaleFactor: 1,
            //                 textAlign: TextAlign.justify,
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: Get.width * .01,
            //                   letterSpacing: 1,
            //                 ),
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 "The Mission of the college is to impart teaching in the class room both with the traditional and e-system and has adopted latest technology for the girls which will help them in their seminars and workshops. The career counselling cell has been constituted to counsel the students for various competitive examinations. The Mahavidyalaya plans to introduce skill-oriented coursers under U.G. programmes.",
            //                 textScaleFactor: 1,
            //                 textAlign: TextAlign.justify,
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: Get.width * .01,
            //                   letterSpacing: 1,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         flex: 2,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.stretch,
            //           children: [
            //             Container(
            //               height: Get.height * .3,
            //               margin: EdgeInsets.symmetric(
            //                   vertical: 10, horizontal: 10),
            //               padding: EdgeInsets.all(10),
            //               decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                   image: AssetImage("assets/vision.jpg"),
            //                   fit: BoxFit.fill,
            //                 ),
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
