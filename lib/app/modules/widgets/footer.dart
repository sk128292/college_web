import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'dart:html' as html;

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
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
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.ADMISSION_FORM);
                      },
                      child: Text(
                        "Carreer",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
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
                    SizedBox(height: 10),
                    Text(
                      "Rama Devi Bajla Mahila Mahavidhyalaya",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Castairs Town, Deoghar",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Jharkhand - 814112",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Phone No. - 9431548372",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "rdbmcollegedeoghar@gmail.com",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.only(top: 10, bottom: 10),
          //   child: Text(
          //     "Some Important Links",
          //     textScaleFactor: 1,
          //     style: TextStyle(
          //       fontSize: 16,
          //       letterSpacing: 4,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.redAccent,
          //     ),
          //   ),
          // ),
          // Row(
          //   children: [
          //     MaterialButton(
          //       onPressed: () {
          //         html.window.open("https://www.ugc.ac.in/", "_blank");
          //       },
          //       child: Text(
          //         "UGC",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold, color: Colors.white),
          //       ),
          //       color: Colors.blue,
          //     ),
          //     SizedBox(width: 10),
          //     MaterialButton(
          //       onPressed: () {
          //         html.window
          //             .open("http://naac.gov.in/index.php/en/", "_blank");
          //       },
          //       child: Text(
          //         "NAAC",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold, color: Colors.white),
          //       ),
          //       color: Colors.blue,
          //     ),
          //     SizedBox(width: 10),
          //     MaterialButton(
          //       onPressed: () {
          //         html.window.open(
          //             "https://dhr.gov.in/schemes/human-resource-development-health-research-hrd",
          //             "_blank");
          //       },
          //       child: Text(
          //         "HRD",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold, color: Colors.white),
          //       ),
          //       color: Colors.blue,
          //     ),
          //     SizedBox(width: 10),
          //     MaterialButton(
          //       onPressed: () {
          //         html.window.open("https://www.upsc.gov.in/", "_blank");
          //       },
          //       child: Text(
          //         "UPSC",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold, color: Colors.white),
          //       ),
          //       color: Colors.blue,
          //     ),
          //     SizedBox(width: 10),
          //     MaterialButton(
          //       onPressed: () {
          //         html.window.open(
          //             "https://ugcnet.nta.nic.in/WebInfo/Page/Page?PageId=1&LangId=P",
          //             "_blank");
          //       },
          //       child: Text(
          //         "UGC-NET",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold, color: Colors.white),
          //       ),
          //       color: Colors.blue,
          //     ),
          //     SizedBox(width: 10),
          //     MaterialButton(
          //       onPressed: () {
          //         html.window.open("https://ssc.nic.in/", "_blank");
          //       },
          //       child: Text(
          //         "SSC",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold, color: Colors.white),
          //       ),
          //       color: Colors.blue,
          //     )
          //   ],
          // ),
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
    );
  }
}
