import 'package:college_web/app/modules/widgets/footer.dart';
import 'package:college_web/app/modules/widgets/menu_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/commerce_controller.dart';

class CommerceView extends GetView<CommerceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            child: MenuBar(), preferredSize: Size.fromHeight(100.0)),
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
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
