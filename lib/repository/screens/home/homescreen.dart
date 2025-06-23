import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n& Candles"},
    {"img": "image 51.png", "text": "Diwali  \n Gifts"},
    {"img": "image 52.png", "text": "Appliances \n& Gadgets"},
    {"img": "image 53.png", "text": "Home \n living"},
  ];

  var category = [
    {"img": "image 54.png", "text": "Golden Glass \n Wooden Lid candle(oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun  \n By Bikano"},
    {"img": "image 63.png", "text": "Bikaji Bhujia"},
  ];

  final List<Map<String, String>> grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuits & \nBak"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),

            // 🔴 Header Section
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  color: Color(0XFFEC0505),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          overflow: null,
                          textAlign: TextAlign.left,
                        ),
                        UiHelper.CustomText(
                          text: "16 minutes",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          overflow: null,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5),
                        UiHelper.CustomText(
                          text:
                              "HOME - Deepak Panchal, Haryana, Hansi (Guru ji)",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          overflow: null,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  right: 20,
                  bottom: 100,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white, size: 20),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 10,
                  right: 10,
                  child: UiHelper.CustomTextField(controller: searchController),
                ),
              ],
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white,
            ),

            // 🟡 Diwali Sale
            Container(
              height: 210,
              width: double.infinity,
              color: Color(0XFFEC0505),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.CustomImage(img: "image 60.png"),
                      UiHelper.CustomImage(img: "image 55.png"),
                      UiHelper.CustomText(
                        text: "MEGA DIWALI SALE",
                        color: Colors.white,
                        fontweight: FontWeight.bold,
                        fontsize: 17,
                        overflow: null,
                        textAlign: TextAlign.center,
                      ),
                      UiHelper.CustomImage(img: "image 61.png"),
                      UiHelper.CustomImage(img: "image 56.png"),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 10,
                                  overflow: null,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  height: 50,
                                  child: UiHelper.CustomImage(
                                    img: data[index]["img"].toString(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // 🟢 Category Section
            _buildSectionTitle("Top Picks"),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                              child: UiHelper.CustomImage(
                                img: category[index]["img"].toString(),
                              ),
                            ),
                            SizedBox(height: 6),
                            UiHelper.CustomText(
                              text: category[index]["text"].toString(),
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 11,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.timer, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                UiHelper.CustomText(
                                  text: "16 min",
                                  color: Colors.grey,
                                  fontweight: FontWeight.normal,
                                  fontsize: 12,
                                  overflow: null,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.currency_rupee,
                                    size: 16, color: Colors.black),
                                SizedBox(width: 4),
                                UiHelper.CustomText(
                                  text: "79",
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                  overflow: null,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            // 🧂 Grocery Section
            _buildSectionTitle("Grocery & Kitchen"),
            _buildHorizontalList(grocerykitchen),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // 🔹 Widget for section titles
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      child: UiHelper.CustomText(
        text: title,
        color: Colors.black,
        fontweight: FontWeight.bold,
        fontsize: 14,
        overflow: null,
        textAlign: TextAlign.left,
      ),
    );
  }

  // 🔸 Widget for horizontal lists
  Widget _buildHorizontalList(List<Map<String, String>> items,
      {bool isTextVisible = true}) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 78,
                  width: 71,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFD9EBEB),
                  ),
                  child: UiHelper.CustomImage(
                    img: items[index]["img"].toString(),
                  ),
                ),
              ),
              if (isTextVisible)
                UiHelper.CustomText(
                  text: items[index]["text"].toString(),
                  color: Colors.black,
                  fontweight: FontWeight.normal,
                  fontsize: 10,
                  overflow: null,
                  textAlign: TextAlign.left,
                ),
            ],
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import '../../widgets/uihelper.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//   final TextEditingController searchController = TextEditingController();
//   var data = [
//     {"img": "image 50.png", "text": "Lights, Diyas \n& Candles"},
//     {"img": "image 51.png", "text": "Diwali  \n Gifts"},
//     {"img": "image 52.png", "text": "Appliances \n& Gadgets"},
//     {"img": "image 53.png", "text": "Home \n living"},
//   ];
//
//   var category = [
//     {"img": "image 54.png", "text": "Golden Glass \n Wooden Lid candle(oudh)"},
//     {"img": "image 57.png", "text": "Royal Gulab Jamun  \n By Bikano"},
//     {"img": "image 63.png", "text": "Bikaji Bhujia"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 40,
//           ),
//           Stack(
//             children: [
//               Container(
//                 height: 170,
//                 width: double.infinity,
//                 color: Color(0XFFEC0505),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 30),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           UiHelper.CustomText(
//                             text: "Blinkit in",
//                             color: Colors.white,
//                             fontweight: FontWeight.bold,
//                             fontsize: 15,
//                             overflow: null,
//                             textAlign: TextAlign.left,
//                           ),
//                           UiHelper.CustomText(
//                             text: "16 minutes",
//                             color: Colors.white,
//                             fontweight: FontWeight.bold,
//                             fontsize: 20,
//                             overflow: null,
//                             textAlign: TextAlign.left,
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           UiHelper.CustomText(
//                             text:
//                                 "HOME - Deepak Panchal, Haryana, Hansi (Guru ji)",
//                             color: Colors.white,
//                             fontweight: FontWeight.bold,
//                             fontsize: 14,
//                             overflow: null,
//                             textAlign: TextAlign.left,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const Positioned(
//                 right: 20,
//                 bottom: 100,
//                 child: CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Colors.black,
//                   child: Icon(Icons.person, color: Colors.white, size: 20),
//                 ),
//               ),
//               Positioned(
//                 bottom: 25,
//                 left: 10,
//                 right: 10,
//                 child: UiHelper.CustomTextField(controller: searchController),
//               ),
//             ],
//           ),
//           Container(
//             height: 1,
//             width: double.infinity,
//             color: Colors.white,
//           ),
//           Container(
//             height: 196,
//             width: double.infinity,
//             color: Color(0XFFEC0505),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     UiHelper.CustomImage(img: "image 60.png"),
//                     UiHelper.CustomImage(img: "image 55.png"),
//                     UiHelper.CustomText(
//                         text: "MEGA DIWALI SALE",
//                         color: Colors.white,
//                         fontweight: FontWeight.bold,
//                         fontsize: 17,
//                         overflow: null,
//                         textAlign: TextAlign.center),
//                     UiHelper.CustomImage(img: "image 61.png"),
//                     UiHelper.CustomImage(img: "image 56.png"),
//                   ],
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListView.builder(
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.only(
//                               left: 8, right: 5, top: 1, bottom: 1),
//                           child: Container(
//                             height: 108,
//                             width: 86,
//                             decoration: BoxDecoration(
//                                 color: Color(0XFFEAD3D3),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 UiHelper.CustomText(
//                                     text: data[index]["text"].toString(),
//                                     color: Colors.black,
//                                     fontweight: FontWeight.bold,
//                                     fontsize: 10,
//                                     overflow: null,
//                                     textAlign: TextAlign.center),
//                                 UiHelper.CustomImage(
//                                     img: data[index]["img"].toString())
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                       itemCount: data.length,
//                       scrollDirection: Axis.horizontal,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           ListView.builder(
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   Container(
//                     clipBehavior: Clip.antiAlias,
//                     height: 108,
//                     width: 93,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: UiHelper.CustomImage(
//                         img: category[index]["img"].toString()),
//                   )
//                 ],
//               );
//             },
//             itemCount: category.length,
//             scrollDirection: Axis.horizontal,
//           )
//         ],
//       ),
//     ));
//   }
// }
