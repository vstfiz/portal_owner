import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/warehouse/warehouse_tile.dart';


class Warehouse extends StatelessWidget{

  var customer_credit_details = [
    ['21385', 'James', '94568712345', 'dawefd@daf.com', '\$448'],
    ['21385', 'James', '94568712345', 'dawefd@daf.com', '\$448'],
    ['21385', 'James', '94568712345', 'dawefd@daf.com', '\$448'],
    ['21385', 'James', '94568712345', 'dawefd@daf.com', '\$448'],
    ['21385', 'James', '94568712345', 'dawefd@daf.com', '\$448'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtils.height,
        width: ScreenUtils.width * (5 / 6),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                  height: ScreenUtils.height * 2,
                  width: ScreenUtils.width * (5 / 6)),
              Positioned(
                child: Image.asset(
                  Images.warehouse,
                  height: ScreenUtils.getHeight(26),
                  width: ScreenUtils.getWidth(26),
                  color: Color(0xFF5DB3C1),
                ),
                top: ScreenUtils.getHeight(44),
                left: ScreenUtils.getWidth(33),
              ),
              Positioned(
                child: Text(
                  'warehouse'.toUpperCase(),
                  style: GoogleFonts.roboto(
                      fontSize: 35,
                      color: Color(0xFF5DB3C1),
                      fontWeight: FontWeight.w400),
                ),
                top: ScreenUtils.getHeight(35),
                left: ScreenUtils.getWidth(86),
              ),
              Positioned(
                child: Container(
                  width: ScreenUtils.getWidth(173),
                  height: ScreenUtils.getHeight(40),
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(ScreenUtils.getWidth(20)),
                      border: Border.all(
                          color: Color(0xFF5DB3C1), width: 2.0)),
                  child: TextButton(
                      onPressed: () {
                        // showDialog(
                        //     barrierDismissible: false,
                        //     barrierColor:
                        //     Color(0xFF5DB3C1).withOpacity(0.6),
                        //     context: context,
                        //     builder: (context) {
                        //       return AddExpense(context);
                        //     });
                      },
                      child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                        Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF5DB3C1)),
                            child: Center(
                              child: Icon(Icons.add,
                                  color: Colors.white,
                                  size: ScreenUtils.getWidth(13)),
                            )),
                        SizedBox(
                          width: ScreenUtils.getWidth(15),
                        ),
                        Text(
                          'Add Warehouse',
                          style: GoogleFonts.roboto(
                              fontSize: 18, color: Color(0xFF5DB3C1)),
                        )
                      ])),
                ),
                top: ScreenUtils.getHeight(36),
                right: ScreenUtils.getWidth(47),
              ),
              Positioned(
                child: Container(
                  width: ScreenUtils.width * (5 / 6),
                  height: ScreenUtils.height * 2 - ScreenUtils.getHeight(150),
                  // color: Colors.green,
                  child: DefaultTabController(
                      length: 1,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: ScreenUtils.getWidth(200),
                              height: ScreenUtils.getHeight(40),
                              child: TabBar(
                                tabs: <Tab>[
                                  Tab(
                                    text: 'Warehouse',
                                  ),
                                ],
                              ),
                            ),
                            left: ScreenUtils.getWidth(50.0),
                          ),
                          Positioned(
                            child: Container(
                              width: ScreenUtils.width * (5 / 6),
                              height: ScreenUtils.getHeight(755),
                              child: TabBarView(
                                children: [
                                  warehouseTile(),
                                ],
                              ),
                            ),
                            left: ScreenUtils.getWidth(0.0),
                            top: ScreenUtils.getHeight(40),
                          ),
                        ],
                      )),
                ),
                top: ScreenUtils.getHeight(150),
                left: ScreenUtils.getWidth(0.0),
              ),
            ],
          ),
        )


    );
  }
}