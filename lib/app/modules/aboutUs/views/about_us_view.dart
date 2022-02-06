import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              color: Color(0xFF5B6671),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Rama Devi Bajla Mahavidyalata",
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Rama Devi Bajla Mahila Mahavidyalaya is situated in the district of Deoghar. Deoghar town has its own importance as \"Deoghar\" means \"abode of God\" where Lord Shiva resides in the form of one of the twelve Jyotirlings. Deoghar is famous for the temple of Lord Shiva popularly known as Baba Baidyanath all over India. It is also one of the prominent tourist spots as it has an attractive natural setting in the midst of small hills like Trikuti, Nandan Pahar, Tapowan, Digaria Hills and a quite number of water resources.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1.3,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "The Ram Devi Bajla Mahavidyalaya, Deoghar was established on 17th July 1962 with small number of girl students and with only one faculty  -faculty of Arts. The Mahavidyalaya has the teaching at Intermediate as well as at degree level from the very beginning. The Mahavidyalaya has nine acres of land to its own credit which is basauri land situated in the heart of the town. The Mahavidyalaya is named after Smt. Rama Devi Bajla wife of Late Durgaduttjee Bajla, a noted Business man who donated the land for this Mahavidyalaya. Since this area of Deoghar falls in backward area, the percentage of literates is not still up to the mark. ",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1.3,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "The Mahavidyalaya was affiliated to Bhagalpur University, Bhagalpur on 1st June 1970 during the period of undivided Bihar. The Mahavidyalaya could get the stature of constituent college on 12th December 1980. The Mahavidyalaya was transferred to Sidho Kanhu Murmu University, Dumka in 1992, after the establishment of the said university on 10th January 1992 which is at present in the state of Jharkhand. The Mahavidyalaya falls in the category Women's Mahavidyalaya. ",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1.3,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "At present the Mahavidyalaya has four faculties - Humanities, Arts, Science and Commerce at degree level as well as three faculties—Arts, Commerce and Science at Intermediate level. The total number of students of this Mahavidyalaya is about 3800-4200 at present at Degree level. The number of students at Intermediate level is about 2400. The number has decreased at degree level in the last 2-3 years as the students are not taking interest in the traditional Honours courses of Arts, Science & Commerce as these courses fail to give employment to the students just after passing out. The College has seven regular departments of Arts faculty right from its establishment --- namely Hindi, English, Bengali, Sanskrit, Political Science, Economics and Philosophy.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      letterSpacing: 1.3,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "The Mahavidyalaya is situated at the heart of the town of Deoghar, hence, the location of the college is quite safe for the girls students where they can reach safely from their residence. Students have ample opportunities to offer Honours in subject according to their choice which help them pursue for higher studies.",
                    textScaleFactor: 1,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 17,
                      letterSpacing: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: Get.height * .5,
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/principle.jpg"),
                              fit: BoxFit.cover,
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
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Principal's Pen",
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Rama Devi Bajla Mahila Mahavidyalaya, Deoghar is a truly remarkable place. It is a place where Lord Shiva resides in the form of one of the twelve Jyotirlings. Deoghar is famous for the temple of Lord Shiva popularly known as Baba Baidyanath Dham all over India. It's a place where incredibly talented, intellectually curious students come together with extraordinary faculty to create a community of scholars that is both tightly knit and deeply engaged with the larger world.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              letterSpacing: 1.3,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "I invite you to get to know Rama Devi Bajla Mahila Mahavidyalaya better by exploring the links above as well as the rest of our website. You can also keep up-to-date with what's happening on campus through our social media accounts. While we do our best to reflect Rama Devi Bajla Mahila Mahavidyalaya’s collaborative and generous community of students, faculty, staff, and alumnae online, I highly recommend visiting the campus and finding out for yourself what makes Rama Devi Bajla Mahila Mahavidyalaya so special.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              letterSpacing: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xFF5B6671),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Container(
                            height: Get.height * .35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/history.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "History",
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "The prestigious, Bajla family of Deoghar founded this college on 17th July-1962. The main objectives were women empowerment emancipation and self-depended. Since then, it never looked back and starting with 7(Seven) students now it has achieved a huge no of students that is more then 4000(Four thousand) by arduous effort, dedication and sincerity. Now the colleges known for its quality education, discipline and excellent culture. The academic environment is student-friendly, and the teaching members use computer aided technology and emphasizes an interactive learning process. They offer individual attention and support to students through counselling, tutorial and remedial classes. The faculty members are engaged in meaningful research and acclaimed publications and some of them have been invited by universities outside the state and also the country It is a premier institution of higher education specially for woman by imparting “Intermediate” and  “Under Graduate” courses not only to the students of  Deoghar but also of the whole Santhal Parganas.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.3,
                            ),
                          ),
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
                        children: [
                          Container(
                            height: Get.height * .35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/objective.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Our Objective",
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Our objective is significantly to provide quality education in various fields so as to help all round development of the most backward students of the locality and free them from all kinds of hurdles. The student’s empowerment is made transparent in admission of students under the guide lines of the S.K.M.University. The college library purchases books and subscribes to various journals with the funds available for the student’s purpose. Previous year question papers in the form of question bank, syllabuses are kept in the library for student's reference. The career counselling cell has been constituted to counsel the students for various competitive examinations. The student's secure good marks in the university examination even some excel the other colleges in the university. Examinations are conducted as per the programme prepared by the University. Parents- Teachers – Students triangular meetings are held to assess the performance of the students. The Mahavidyalaya plans to introduce skill oriented coursers under U.G. programmes.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.3,
                            ),
                          ),
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
                        children: [
                          Container(
                            height: Get.height * .35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/vision.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Vision & Mission",
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Vision of the college is to impart quality education to the girl students of this locality and to strengthen the women’s empowerment with an affordable admission fee of Rs 14/- only and not charging any tuition fee. The aim of the college is to inculcate quality education in Arts, Science and Commerce to enhance the employability of the girl students and ultimately to engage the girl students in NSS activities to make them more sociable and committed to the society at a large. ",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.3,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "The Mission of the college is to impart teaching in the class room both with the traditional and e-system and has purchased LCD projector to implement latest teaching tool for the girls which will help them to present papers in the seminars and workshops.",
                            textScaleFactor: 1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
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
      ),
    );
  }
}
