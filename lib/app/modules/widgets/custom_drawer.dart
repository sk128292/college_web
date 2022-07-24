import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color1 = Color(0xFFA41E34);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.ABOUT_US);
              },
              child: Text(
                "THE RDBMM",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.COLLEGE_ADMINISTRATIVE);
              },
              child: Text(
                "COLLEGE ADMINISTRATIVE",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.NAAC_IQAC);
              },
              child: Text(
                "NAAC & IQAC",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.ACADEMIC);
              },
              child: Text(
                "ACADEMICS",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.ADMISSION);
              },
              child: Text(
                "ADMISSION",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.EXAMINATION);
              },
              child: Text(
                "EXAMINATION",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.FACILITIES);
              },
              child: Text(
                "FACILITIES",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.STUDENT_CORNER);
              },
              child: Text(
                "STUDENT CORNER",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                // Get.toNamed(Routes.ABOUT_US);
              },
              child: Text(
                "NEWS",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                // Get.toNamed(Routes.ABOUT_US);
              },
              child: Text(
                "ALUMNI",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            InkWell(
              onTap: () {
                // Get.toNamed(Routes.ABOUT_US);
              },
              child: Text(
                "CONTACT",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: color1,
                ),
              ),
            ),
            Divider(thickness: 2, height: 20),
            SizedBox(height: 50),
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
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
    );
  }
}
