import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/utils/colors/colors.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/inventory/brands.dart';
import 'package:portal_owner/view/inventory/products.dart';

class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  void initState() {
    super.initState();
  }

  int selectedTab = 0;

  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtils.height,
      width: ScreenUtils.width * (5 / 6),
      child: Stack(
        children: [
          Container(
              height: ScreenUtils.height * 1.55,
              width: ScreenUtils.width * (5 / 6)),
          Positioned(
            child: Image.asset(
              Images.warehouse,
              height: ScreenUtils.getWidth(22),
              width: ScreenUtils.getWidth(26),
              color: ColorStyle.selected,
            ),
            top: ScreenUtils.getHeight(42),
            left: ScreenUtils.getWidth(25),
          ),
          Positioned(
            child: Text(
              'Inventory',
              style: GoogleFonts.roboto(
                  fontSize: 35,
                  color: Color(0xFF5DB3C1),
                  fontWeight: FontWeight.w500),
            ),
            top: ScreenUtils.getHeight(36),
            left: ScreenUtils.getWidth(66),
          ),
          Positioned(
            child: Text(
              'Keep track of all the product directories you have created',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Color(0xFF7D86A9),
                  fontWeight: FontWeight.w400),
            ),
            top: ScreenUtils.getHeight(79),
            left: ScreenUtils.getWidth(23),
          ),
          Positioned(
            child: Container(
              width: ScreenUtils.width * (5 / 6),
              height: ScreenUtils.height * 2 - ScreenUtils.getHeight(150),
              // color: Colors.green,
              child: DefaultTabController(
                  length: 2,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: ScreenUtils.getWidth(300),
                          height: ScreenUtils.getHeight(40),
                          child: TabBar(
                            onTap: (index) {
                              setState(() {
                                selectedTab = index;
                              });
                            },
                            tabs: <Tab>[
                              Tab(
                                text: 'Products',
                              ),
                              Tab(
                                text: 'Brands',
                              ),
                            ],
                          ),
                        ),
                        left: ScreenUtils.getWidth(20.0),
                      ),
                      Positioned(
                        child: Container(
                          width: ScreenUtils.width * (5 / 6),
                          height: ScreenUtils.getHeight(755),
                          child: TabBarView(
                            children: [
                           Products(),
                              Brands(),
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
    );

  }
}