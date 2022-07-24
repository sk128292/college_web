import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/admission_form_controller.dart';

class AdmissionFormView extends GetView<AdmissionFormController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "JHARKHAND ACADEMIC COUNCIL, RANCHI",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "STUDENT INFORMATION SHEET FOR INTERMEDIATE REGN., SESSION 2021-23 & CLASS XI EXAMINATION 2022",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        "College Code: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter College Code",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Text(
                        "Institute Name: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Institute Name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Student Name: ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Student Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        "Date of Birth: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Date of Birth",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Text(
                        "Gender: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Gender",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      "Divyang: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                    Text("NONE"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("BLIND"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("DEAF"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("DUMB"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("SAPSTIC"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("ORTHOPEDIC"),
                  ],
                ),
                SizedBox(width: 50),
                Row(
                  children: [
                    Text(
                      "Cast: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                    Text("GENERAL"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("SC"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("ST"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("BC-1"),
                    SizedBox(width: 15),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                    ),
                    Text("BC-2"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
