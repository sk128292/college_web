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
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                Get.toNamed(Routes.ABOUT_US);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.map,
                    size: 17,
                    color: color,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "ABOUT RDBMM",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 15,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
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
                Get.toNamed(Routes.NAAC_IQAC);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    size: 17,
                    color: color1,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "NAAC & IQAC",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 15,
                      color: color1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
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
              child: Row(
                children: [
                  Icon(
                    Icons.file_copy,
                    size: 17,
                    color: color2,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "ACADEMICS",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 15,
                      color: color2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
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
                Get.toNamed(Routes.DEPARTMENT);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.apartment,
                    size: 17,
                    color: color5,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "DEPARTMENTS",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 15,
                      color: color5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // MouseRegion(
          //   onEnter: (event) {
          //     setState(() {
          //       color3 = Colors.green;
          //     });
          //   },
          //   onExit: (event) {
          //     setState(
          //       () {
          //         color3 = Colors.white;
          //       },
          //     );
          //   },
          //   child: InkWell(
          //     onTap: () {
          //       Get.toNamed(Routes.LEARNING_PORTAL);
          //     },
          //     child: Row(
          //       children: [
          //         Icon(
          //           Icons.mail,
          //           size: 17,
          //           color: color3,
          //         ),
          //         SizedBox(width: 5),
          //         Text(
          //           "E-LEARNING",
          //           textScaleFactor: 1,
          //           style: TextStyle(
          //             fontSize: 15,
          //             color: color3,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(width: 20),
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
                Get.toNamed(Routes.STUDENT_CORNER);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.book,
                    size: 17,
                    color: color4,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "STUDENT CORNER",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 15,
                      color: color4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),

          // Row(
          //   children: [
          //     Icon(Icons.create, size: 17),
          //     SizedBox(width: 5),
          //     Text(
          //       "SIGNUP",
          //       textScaleFactor: 1,
          //       style: TextStyle(fontSize: 15),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
