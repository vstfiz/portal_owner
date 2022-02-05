import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  void initState() {
    super.initState();
  }

  int selectedTab = 0;

  Widget build(BuildContext context) {
    return Container(
      // height: Globals.height,
      // width: Globals.width * (5 / 6),
      // child: Stack(
      //   children: [
      //     Container(
      //         height: Globals.height * 1.55,
      //         width: Globals.width * (5 / 6)),
      //     Positioned(
      //       child: Image.asset(
      //         Images.dollar,
      //         height: Globals.getHeight(30),
      //         width: Globals.getWidth(30),
      //         color: Color(0xFF5DB3C1),
      //       ),
      //       top: Globals.getHeight(38),
      //       left: Globals.getWidth(57),
      //     ),
      //     Positioned(
      //       child: Text(
      //         'Subscription',
      //         style: GoogleFonts.roboto(
      //             fontSize: 35,
      //             color: Color(0xFF5DB3C1),
      //             fontWeight: FontWeight.w500),
      //       ),
      //       top: Globals.getHeight(35),
      //       left: Globals.getWidth(98),
      //     ),
      //     Positioned(
      //       child: Text(
      //         'current plan'.toUpperCase(),
      //         style: GoogleFonts.roboto(
      //             fontSize: 14,
      //             color: Color(0xFF7D86A9),
      //             fontWeight: FontWeight.w400),
      //       ),
      //       top: Globals.getHeight(107),
      //       left: Globals.getWidth(58),
      //     ),
      //     Positioned(
      //       child: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: ColorStyle.selected
      //         ),
      //         height: Globals.getHeight(90),
      //         width: Globals.getWidth(90),
      //       ),
      //       top: Globals.getHeight(139),
      //       left: Globals.getWidth(61),
      //     ),
      //     Positioned(
      //       child: Text(
      //         'basic plan'.toUpperCase(),
      //         style: GoogleFonts.roboto(
      //             fontSize: 30,
      //             color: ColorStyle.textBlack,
      //             fontWeight: FontWeight.w400),
      //       ),
      //       top: Globals.getHeight(143),
      //       left: Globals.getWidth(187),
      //     ),
      //     Positioned(
      //       child: Text(
      //         'Trial Start Date: 21 January, 2022',
      //         style: GoogleFonts.roboto(
      //             fontSize: 14,
      //             color: ColorStyle.textBlack,
      //             fontWeight: FontWeight.w400),
      //       ),
      //       top: Globals.getHeight(184),
      //       left: Globals.getWidth(187),
      //     ),
      //     Positioned(
      //       child: Text(
      //         'Trial Ends in 5 Days',
      //         style: GoogleFonts.roboto(
      //             fontSize: 14,
      //             color: Color(0xFFFF6515),
      //             fontWeight: FontWeight.w400),
      //       ),
      //       top: Globals.getHeight(209),
      //       left: Globals.getWidth(187),
      //     ),
      //     Positioned(
      //       child: Container(
      //         decoration: BoxDecoration(
      //             color: Colors.white
      //         ),
      //         child: Stack(
      //           children: [
      //             Positioned(
      //               child: Text(
      //                 'order id'.toUpperCase(),
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 15,
      //                     color: ColorStyle.textBlack,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(20),
      //               left: Globals.getWidth(46),
      //             ),
      //             Positioned(
      //               child: Text(
      //                 'payment mode'.toUpperCase(),
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 15,
      //                     color: ColorStyle.textBlack,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(20),
      //               left: Globals.getWidth(220),
      //             ),
      //             Positioned(
      //               child: Text(
      //                 'payment mode'.toUpperCase(),
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 15,
      //                     color: ColorStyle.textBlack,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(20),
      //               left: Globals.getWidth(405),
      //             ),
      //             Positioned(
      //               child: Text(
      //                 'payment mode'.toUpperCase(),
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 15,
      //                     color: ColorStyle.textBlack,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(20),
      //               left: Globals.getWidth(540),
      //             ),
      //             Positioned(
      //               child: Text(
      //                 '#5646dfe5',
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 14,
      //                     color: ColorStyle.deselected,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(48),
      //               left: Globals.getWidth(46),
      //             ),
      //             Positioned(
      //               child: Text(
      //                 'UPI',
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 14,
      //                     color: ColorStyle.deselected,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(48),
      //               left: Globals.getWidth(220),
      //             ),
      //             Positioned(
      //               child: Text(
      //                 '1 Month',
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 14,
      //                     color: ColorStyle.deselected,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(48),
      //               left: Globals.getWidth(405),
      //             ),
      //             Positioned(
      //               child: Text(
      //                 '\$ 4.99',
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 14,
      //                     color: ColorStyle.deselected,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               top: Globals.getHeight(48),
      //               left: Globals.getWidth(540),
      //             ),
      //           ],
      //         ),
      //         height: Globals.getHeight(100),
      //         width: Globals.getWidth(685),
      //       ),
      //       top: Globals.getHeight(142),
      //       left: Globals.getWidth(448),
      //     ),
      //     Positioned(
      //       child: Container(
      //         width: Globals.getWidth(198),
      //         height: Globals.getHeight(40),
      //         decoration: BoxDecoration(
      //             borderRadius:
      //             BorderRadius.circular(Globals.getWidth(20)),
      //             border: Border.all(
      //                 color: Color(0xFF5DB3C1), width: 2.0)),
      //         child: TextButton(
      //             onPressed: () {
      //               showDialog(
      //                   barrierDismissible: false,
      //                   barrierColor:
      //                   Color(0xFF5DB3C1).withOpacity(0.6),
      //                   context: context,
      //                   builder: (context) {
      //                     return ViewHistory();
      //                   });
      //             },
      //             child:
      //               Text(
      //                 selectedTab==0?'History':selectedTab==1?'Make Order':'Upgrade',
      //                 style: GoogleFonts.roboto(
      //                     fontSize: 18, color: Color(0xFF5DB3C1),fontWeight: FontWeight.w500),
      //               )
      //             ),
      //       ),
      //       top: Globals.getHeight(40),
      //       right: Globals.getWidth(54),
      //     ),
      //     Positioned(
      //       child: Container(
      //         width: Globals.width * (5 / 6),
      //         height: Globals.height * 2 - Globals.getHeight(150),
      //         // color: Colors.green,
      //         child: DefaultTabController(
      //             length: 3,
      //             initialIndex: 0,
      //             child: Stack(
      //               children: [
      //                 Positioned(
      //                   child: Container(
      //                     width: Globals.getWidth(450),
      //                     height: Globals.getHeight(40),
      //                     child: TabBar(
      //                       onTap: (index) {
      //                         setState(() {
      //                           selectedTab = index;
      //                         });
      //                       },
      //                       tabs: <Tab>[
      //                         Tab(
      //                           text: 'Current Plan',
      //                         ),
      //                         Tab(
      //                           text: 'Upgrade Plan',
      //                         ),
      //                         Tab(
      //                           text: 'Subscription History',
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                   left: Globals.getWidth(20.0),
      //                 ),
      //                 Positioned(
      //                   child: Container(
      //                     width: Globals.width * (5 / 6),
      //                     height: Globals.getHeight(755),
      //                     child: TabBarView(
      //                       children: [
      //                         CurrentPlan(),
      //                         UpgradePlan(),
      //                         Warehouse()
      //                       ],
      //                     ),
      //                   ),
      //                   left: Globals.getWidth(0.0),
      //                   top: Globals.getHeight(40),
      //                 ),
      //               ],
      //             )),
      //       ),
      //       top: Globals.getHeight(274),
      //       left: Globals.getWidth(0.0),
      //     ),
      //   ],
      // ),
    );

  }
}
