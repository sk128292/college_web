import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
