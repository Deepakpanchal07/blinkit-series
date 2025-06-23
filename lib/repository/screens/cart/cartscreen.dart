import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var BestSellers = [
    {
      "img": "Milk.png",
      "text": "Amul Taza Toned \nFresh milk",
    },
    {"img": "potato.png", "text": "Potato (Aloo)"},
    {"img": "Tomato.png", "text": "Hybrid Tomato"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 15,
                            fontfamily: "bold",
                            overflow: null,
                            textAlign: TextAlign.left),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                            text: "16 minutes",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold",
                            overflow: null,
                            textAlign: TextAlign.left),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                            text: "HOME ",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            overflow: null,
                            textAlign: TextAlign.left),
                        UiHelper.CustomText(
                            text: "- Deepak Panchal, Haryana, Hansi (Guru ji)",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            overflow: null,
                            textAlign: TextAlign.center),
                      ],
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
          const SizedBox(height: 20),
          UiHelper.CustomImage(img: "shopping-cart.png"),
          const SizedBox(height: 15),
          UiHelper.CustomText(
              text: "Reordering will be easy",
              color: Colors.black,
              fontweight: FontWeight.w700,
              fontsize: 16,
              fontfamily: "bold",
              overflow: null,
              textAlign: TextAlign.center),
          SizedBox(height: 5),
          UiHelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 12,
              fontfamily: "bold",
              overflow: null,
              textAlign: TextAlign.center),
          UiHelper.CustomText(
              text: "them again easily",
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 12,
              fontfamily: "bold",
              overflow: null,
              textAlign: TextAlign.center),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                  text: "Best Sellers",
                  color: Colors.black,
                  fontweight: FontWeight.w600,
                  fontsize: 16,
                  fontfamily: "bold",
                  overflow: null,
                  textAlign: TextAlign.left),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemCount: BestSellers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // ✅ Left Align
                      children: [
                        Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                              img: BestSellers[index]["img"].toString()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        UiHelper.CustomText(
                          text: BestSellers[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10,
                          overflow: null,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisSize: MainAxisSize.min, // ✅ Compact row
                          children: [
                            Icon(Icons.timer, size: 20, color: Colors.grey),
                            SizedBox(width: 4),
                            UiHelper.CustomText(
                              text: "16 min",
                              color: Colors.grey,
                              fontweight: FontWeight.normal,
                              fontsize: 16,
                              overflow: null,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisSize: MainAxisSize.min, // ✅ Compact row
                          children: [
                            Icon(Icons.currency_rupee,
                                size: 20, color: Colors.black),
                            SizedBox(width: 4),
                            UiHelper.CustomText(
                              text: "21",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                              overflow: null,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//
// import 'package:flutter/material.dart';
//
// import '../../widgets/uihelper.dart';
//
// class CartSreen extends StatelessWidget {
//   TextEditingController searchController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         SizedBox(
//           height: 40,
//         ),
//         Stack(
//           children: [
//             Container(
//               height: 190,
//               width: double.infinity,
//               color: Color(0XFFF7CB45),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 20,
//                       ),
//                       UiHelper.CustomText(
//                           text: "Blinkit in",
//                           color: Color(0XFF000000),
//                           fontweight: FontWeight.bold,
//                           fontsize: 15,
//                           fontfamily: "bold"),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 20,
//                       ),
//                       UiHelper.CustomText(
//                           text: "16 minutes",
//                           color: Color(0XFF000000),
//                           fontweight: FontWeight.bold,
//                           fontsize: 20,
//                           fontfamily: "bold")
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 20,
//                       ),
//                       UiHelper.CustomText(
//                           text: "HOME ",
//                           color: Color(0XFF000000),
//                           fontweight: FontWeight.bold,
//                           fontsize: 14),
//                       UiHelper.CustomText(
//                           text: "- Deepak Panchal, Haryana, Hansi (Guru ji)",
//                           color: Color(0XFF000000),
//                           fontweight: FontWeight.bold,
//                           fontsize: 14)
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const Positioned(
//               right: 20,
//               bottom: 100,
//               child: CircleAvatar(
//                 radius: 15,
//                 backgroundColor: Colors.white,
//                 child: Icon(
//                   Icons.person,
//                   color: Colors.black,
//                   size: 20,
//                 ),
//               ),
//             ),
//             Positioned(
//                 bottom: 40,
//                 left: 20,
//                 child: UiHelper.CustomTextField(controller: searchController)),
//           ],
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         UiHelper.CustomImage(img: "shopping-cart.png"),
//         const SizedBox(
//           height: 15,
//         ),
//         UiHelper.CustomText(
//             text: "Reordering will be easy",
//             color: Color(0XFF000000),
//             fontweight: FontWeight.w700,
//             fontsize: 16,
//             fontfamily: "bold"),
//         SizedBox(
//           height: 5,
//         ),
//         UiHelper.CustomText(
//             text: "Items you order will show up here so you can buy",
//             color: Color(0XFF000000),
//             fontweight: FontWeight.w500,
//             fontsize: 12,
//             fontfamily: "bold"),
//         UiHelper.CustomText(
//             text: "them again easily",
//             color: Color(0XFF000000),
//             fontweight: FontWeight.w500,
//             fontsize: 12,
//             fontfamily: "bold"),
//         SizedBox(
//           height: 30,
//         ),
//         Row(
//           children: [
//             SizedBox(
//               width: 20,
//             ),
//             UiHelper.CustomText(
//                 text: "BestSellers",
//                 color: Color(0XFF000000),
//                 fontweight: FontWeight.w600,
//                 fontsize: 16,
//                 fontfamily: "bold"),
//           ],
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Row(
//           children: [
//             SizedBox(
//               width: 20,
//             ),
//             Stack(
//               children: [
//                 UiHelper.CustomImage(img: "Milk.png"),
//                 Padding(
//                     padding: EdgeInsets.only(top: 95, left: 65),
//                     child: UiHelper.CustomButton(() {})),
//                 UiHelper.CustomText(
//                     text: "Amul Taaza Toned",
//                     color: Color(0XFF000000),
//                     fontweight: FontWeight.normal,
//                     fontsize: 8),
//               ],
//             ),
//             SizedBox(
//               width: 15,
//             ),
//             Stack(
//               children: [
//                 UiHelper.CustomImage(img: "potato.png"),
//                 Padding(
//                     padding: EdgeInsets.only(top: 95, left: 65),
//                     child: UiHelper.CustomButton(() {})),
//               ],
//             ),
//             SizedBox(
//               width: 15,
//             ),
//             Stack(
//               children: [
//                 UiHelper.CustomImage(img: "Tomato.png"),
//                 Padding(
//                     padding: EdgeInsets.only(top: 95, left: 65),
//                     child: UiHelper.CustomButton(() {})),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ));
//   }
// }
