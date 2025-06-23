import 'package:blinkit_series/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_series/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // ✅ Added ScrollView to fix overflow
        child: Center(
          child: Column(
            children: [
              UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
              const SizedBox(height: 30),
              UiHelper.CustomImage(img: "image 10.png"),
              const SizedBox(height: 20),
              UiHelper.CustomText(
                  text: "India’s last minute app",
                  color: const Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                  fontfamily: "bold",
                  overflow: null,
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff00000040)),
                  child: Column(
                    children: [
                      UiHelper.CustomText(
                          text: "Deepak",
                          color: const Color(0XFF000000),
                          fontweight: FontWeight.w500,
                          fontsize: 14,
                          overflow: null,
                          textAlign: TextAlign.center),
                      const SizedBox(height: 5),
                      UiHelper.CustomText(
                          text: "88160XXXX",
                          color: const Color(0XFF9C9C9C),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          overflow: null,
                          textAlign: TextAlign.center),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFFE23744),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                    text: "Login with",
                                    color: const Color(0XFFFFFFFF),
                                    fontweight: FontWeight.bold,
                                    fontsize: 15,
                                    overflow: null,
                                    textAlign: TextAlign.center),
                                const SizedBox(width: 7),
                                UiHelper.CustomImage(img: "image 9.png"),
                              ],
                            )),
                      ),
                      const SizedBox(height: 8),
                      UiHelper.CustomText(
                          text:
                              "Access your saved addresses from Zomato automatically!",
                          color: const Color(0XFF9C9C9C),
                          fontweight: FontWeight.w500,
                          fontsize: 10,
                          fontfamily: "regular",
                          overflow: null,
                          textAlign: TextAlign.center),
                      const SizedBox(height: 22),
                      UiHelper.CustomText(
                          text: "or login with phone number",
                          color: const Color(0XFF269237),
                          fontweight: FontWeight.w600,
                          fontsize: 16,
                          overflow: null,
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Extra spacing to avoid cutoff
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:blinkit_series/repository/screens/bottomnav/bottomnavscreen.dart';
// import 'package:blinkit_series/repository/widgets/uihelper.dart';
// import 'package:flutter/material.dart';
//
// class Loginscreen extends StatelessWidget {
//   const Loginscreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
//             const SizedBox(
//               height: 30,
//             ),
//             UiHelper.CustomImage(img: "image 10.png"),
//             const SizedBox(
//               height: 20,
//             ),
//             UiHelper.CustomText(
//                 text: "India’s last minute app",
//                 color: const Color(0XFF000000),
//                 fontweight: FontWeight.bold,
//                 fontsize: 20,
//                 fontfamily: "bold"),
//             const SizedBox(
//               height: 20,
//             ),
//             Card(
//               elevation: 4,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               child: Container(
//                 height: 200,
//                 width: 350,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color(0xff00000040)),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     UiHelper.CustomText(
//                         text: "Deepak",
//                         color: const Color(0XFF000000),
//                         fontweight: FontWeight.w500,
//                         fontsize: 14),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     UiHelper.CustomText(
//                         text: "88160XXXX",
//                         color: const Color(0XFF9C9C9C),
//                         fontweight: FontWeight.bold,
//                         fontsize: 14),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     SizedBox(
//                       height: 48,
//                       width: 295,
//                       child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
//                           },
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color(0XFFE23744),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               )),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               UiHelper.CustomText(
//                                   text: "Login with",
//                                   color: Color(0XFFFFFFFF),
//                                   fontweight: FontWeight.bold,
//                                   fontsize: 15),
//                               const SizedBox(
//                                 width: 7,
//                               ),
//                               UiHelper.CustomImage(img: "image 9.png"),
//                             ],
//                           )),
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     UiHelper.CustomText(
//                         text:
//                             "Access your saved addresses from Zomato automatically!",
//                         color: const Color(0XFF9C9C9C),
//                         fontweight: FontWeight.w500,
//                         fontsize: 10),
//                     const SizedBox(
//                       height: 22,
//                     ),
//                     UiHelper.CustomText(
//                         text: "or login with phone number",
//                         color: const Color(0XFF269237),
//                         fontweight: FontWeight.w600,
//                         fontsize: 16),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
