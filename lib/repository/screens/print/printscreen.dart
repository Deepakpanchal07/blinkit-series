import 'package:blinkit_series/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  color: const Color(0XFFF7CB45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.CustomText(
                                text: "Blinkit in",
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 15,
                                overflow: null,
                                textAlign: TextAlign.left),
                            UiHelper.CustomText(
                                text: "16 minutes",
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 20,
                                overflow: null,
                                textAlign: TextAlign.left),
                            const SizedBox(
                              height: 5,
                            ),
                            UiHelper.CustomText(
                                text:
                                    "HOME - Deepak Panchal, Haryana, Hansi (Guru ji)",
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 14,
                                overflow: null,
                                textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                    right: 20,
                    bottom: 100,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                    )),
                Positioned(
                    right: 10,
                    left: 10,
                    bottom: 25,
                    child: UiHelper.CustomTextField(
                        controller: SearchController()))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "PRINT STORE",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 32,
                overflow: null,
                textAlign: TextAlign.center),
            UiHelper.CustomText(
                text: "Blinkit ensures secure prints at every stages",
                color: Color(0XFF9C9C9C),
                fontweight: FontWeight.bold,
                fontsize: 14,
                overflow: null,
                textAlign: TextAlign.center),
            SizedBox(
              height: 40,
            ),
            Stack(children: [
              Container(
                  height: 180,
                  width: 361,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 50,
                          ),
                          UiHelper.CustomText(
                              text: "Documents",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 18,
                              overflow: null,
                              textAlign: TextAlign.left),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.CustomImage(img: "star.png"),
                          SizedBox(
                            width: 8,
                          ),
                          UiHelper.CustomText(
                              text: "Price Starting at Rps 300/page",
                              color: Color(0XFF9C9C9C),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              overflow: null,
                              textAlign: TextAlign.left)
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.CustomImage(img: "star.png"),
                          SizedBox(
                            width: 8,
                          ),
                          UiHelper.CustomText(
                              text: "Paper quality : 70 GSM",
                              color: Color(0XFF9C9C9C),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              overflow: null,
                              textAlign: TextAlign.left)
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.CustomImage(img: "star.png"),
                          SizedBox(
                            width: 8,
                          ),
                          UiHelper.CustomText(
                              text: "Single side prints",
                              color: Color(0XFF9C9C9C),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              overflow: null,
                              textAlign: TextAlign.left)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 40,
                            width: 125,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0XFF27AF34),
                                ),
                                child: Text(
                                  "Upload Files",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                )),
                          )
                        ],
                      ),
                    ],
                  )),
              Positioned(
                  right: 20,
                  bottom: 40,
                  child: UiHelper.CustomImage(img: "files.png"))
            ]),
          ],
        ),
      ),
    );
  }
}
