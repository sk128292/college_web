import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  Color color = Colors.white;
  Color color1 = Colors.white;
  Color color2 = Colors.white;
  Color color3 = Colors.white;
  Color color4 = Colors.white;
  Color color5 = Colors.white;
  Color color6 = Colors.white;
  Color color7 = Color(0xFFA41E34);
  Color color8 = Color(0xFFA41E34);
  Color color9 = Color(0xFFA41E34);
  Color color10 = Color(0xFFA41E34);

  // showMenus(BuildContext context) async {
  //   await showMenu(
  //     context: context,
  //     position: RelativeRect.fromLTRB(500, 75, Get.width * .25, 0),
  //     items: [
  //       PopupMenuItem(
  //         onTap: () {
  //           Get.toNamed(Routes.NAAC_IQAC);
  //         },
  //         child: Text(
  //           "NAAC",
  //         ),
  //       ),
  //       PopupMenuItem(
  //         child: Text("IQAC"),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(Routes.HOME);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 130,
                width: 170,
                margin: EdgeInsets.only(top: 20, left: 30),
                child: Image.asset("assets/logo.jpeg"),
              ),
              Text(
                "RAMA DEVI BAJLA MAHILA \nMAHAVIDYALAYA, DEOGHAR",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .013,
                  color: Color(0xFFA41E34),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              decoration: BoxDecoration(
                color: Color(0xFFA41E34),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color = Colors.white;
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.ADMISSION);
                      },
                      child: Text(
                        "ADMISSION",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .012,
                      right: MediaQuery.of(context).size.width * .012,
                    ),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color1 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color1 = Colors.white;
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.EXAMINATION);
                      },
                      child: Text(
                        "EXAMINATION",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color1,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .012,
                      right: MediaQuery.of(context).size.width * .012,
                    ),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color2 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color2 = Colors.white;
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.FACILITIES);
                      },
                      child: Text(
                        "FACILITIES",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color2,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .012,
                      right: MediaQuery.of(context).size.width * .012,
                    ),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color3 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color3 = Colors.white;
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.STUDENT_CORNER);
                      },
                      child: Text(
                        "STUDENT CORNER",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color3,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .012,
                      right: MediaQuery.of(context).size.width * .012,
                    ),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color4 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color4 = Colors.white;
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        // Get.toNamed(Routes.ABOUT_US);
                      },
                      child: Text(
                        "NEWS",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color4,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .012,
                      right: MediaQuery.of(context).size.width * .012,
                    ),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color5 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color5 = Colors.white;
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        // Get.toNamed(Routes.ABOUT_US);
                      },
                      child: Text(
                        "ALUMNI",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .012,
                      right: MediaQuery.of(context).size.width * .012,
                    ),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color6 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color6 = Colors.white;
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        // Get.toNamed(Routes.ABOUT_US);
                      },
                      child: Text(
                        "CONTACT",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color7 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color7 = Color(0xFFA41E34);
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.ABOUT_US);
                      },
                      child: Text(
                        "THE RDBMM",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color7,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .011,
                      right: MediaQuery.of(context).size.width * .011,
                    ),
                    child: Container(
                      height: 17,
                      color: Color(0xFFA41E34),
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color8 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color8 = Color(0xFFA41E34);
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.COLLEGE_ADMINISTRATIVE);
                      },
                      child: Text(
                        "COLLEGE ADMINISTRATIVE",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color8,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .011,
                      right: MediaQuery.of(context).size.width * .011,
                    ),
                    child: Container(
                      height: 17,
                      color: Color(0xFFA41E34),
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color9 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color9 = Color(0xFFA41E34);
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.NAAC_IQAC);
                      },
                      child: Text(
                        "NAAC & IQAC",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color9,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .011,
                      right: MediaQuery.of(context).size.width * .011,
                    ),
                    child: Container(
                      height: 17,
                      color: Color(0xFFA41E34),
                      width: 2,
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color10 = Colors.green;
                      });
                    },
                    onExit: (event) {
                      setState(
                        () {
                          color10 = Color(0xFFA41E34);
                        },
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.ACADEMIC);
                      },
                      child: Text(
                        "ACADEMICS",
                        textScaleFactor: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .012,
                          color: color10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 100),
                  MaterialButton(
                    color: Color(0xFFA41E34),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * .012,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.login,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
