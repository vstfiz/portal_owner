import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';

class productInfoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtils.width * (5 / 6),
        child: Stack(children: [
          Positioned(
            child: Container(
              height: ScreenUtils.getHeight(365),
              width: ScreenUtils.getWidth(1130),
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Text(
                      'Product Application',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    left: ScreenUtils.getWidth(33),
                    top: ScreenUtils.getHeight(38),
                  ),
                  Positioned(
                    child: Container(
                      width: ScreenUtils.getWidth(1034),
                      height: ScreenUtils.getHeight(73),
                      child: Text(
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                    left: ScreenUtils.getWidth(33),
                    top: ScreenUtils.getHeight(67),
                  ),
                  Positioned(
                    child: Text(
                      'Manufacturing Description',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    left: ScreenUtils.getWidth(33),
                    top: ScreenUtils.getHeight(142),
                  ),
                  Positioned(
                    child: Container(
                      width: ScreenUtils.getWidth(1034),
                      height: ScreenUtils.getHeight(73),
                      child: Text(
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                    left: ScreenUtils.getWidth(33),
                    top: ScreenUtils.getHeight(171),
                  ),
                  Positioned(
                    child: Text(
                      'Product Description',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    left: ScreenUtils.getWidth(33),
                    top: ScreenUtils.getHeight(242),
                  ),
                  Positioned(
                    child: Container(
                      width: ScreenUtils.getWidth(1034),
                      height: ScreenUtils.getHeight(73),
                      child: Text(
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7)),
                      ),
                    ),
                    left: ScreenUtils.getWidth(33),
                    top: ScreenUtils.getHeight(271),
                  ),
                ],
              ),
            ),
            left: ScreenUtils.getWidth(13),
            top: ScreenUtils.getHeight(30),
          ),
          Positioned(
            child: Container(
              height: ScreenUtils.getHeight(650),
              width: ScreenUtils.getWidth(576),
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [],
              ),
            ),
            left: ScreenUtils.getWidth(13),
            top: ScreenUtils.getHeight(433),
          ),
          Positioned(
            child: Container(
              height: ScreenUtils.getHeight(390),
              width: ScreenUtils.getWidth(518),
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Text(
                      'Inventory Details',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    left: ScreenUtils.getWidth(36),
                    top: ScreenUtils.getHeight(39),
                  ),
                  Positioned(
                    child: Container(
                      height: ScreenUtils.getHeight(41),
                      width: ScreenUtils.getWidth(418),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              'Selling Price',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              '\$34',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1)))),
                    ),
                    left: ScreenUtils.getWidth(37),
                    top: ScreenUtils.getHeight(80),
                  ),
                  Positioned(
                    child: Container(
                      height: ScreenUtils.getHeight(41),
                      width: ScreenUtils.getWidth(418),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              'Purchase Price',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              '\$14',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1)))),
                    ),
                    left: ScreenUtils.getWidth(37),
                    top: ScreenUtils.getHeight(121),
                  ),
                  Positioned(
                    child: Container(
                      height: ScreenUtils.getHeight(41),
                      width: ScreenUtils.getWidth(418),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              'Procurement Charges',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              '\$34',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1)))),
                    ),
                    left: ScreenUtils.getWidth(37),
                    top: ScreenUtils.getHeight(163),
                  ),
                  Positioned(
                    child: Container(
                      height: ScreenUtils.getHeight(41),
                      width: ScreenUtils.getWidth(418),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              'Extra Charges (%)',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              '45 %',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1)))),
                    ),
                    left: ScreenUtils.getWidth(37),
                    top: ScreenUtils.getHeight(210),
                  ),
                  Positioned(
                    child: Container(
                      height: ScreenUtils.getHeight(41),
                      width: ScreenUtils.getWidth(418),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              'Discount',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              '\$21 Flat',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1)))),
                    ),
                    left: ScreenUtils.getWidth(37),
                    top: ScreenUtils.getHeight(255),
                  ),
                  Positioned(
                    child: Container(
                      height: ScreenUtils.getHeight(41),
                      width: ScreenUtils.getWidth(418),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              'Total Quantity',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          Container(
                            width: ScreenUtils.getWidth(209),
                            child: Text(
                              '45',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    left: ScreenUtils.getWidth(37),
                    top: ScreenUtils.getHeight(305),
                  ),
                ],
              ),
            ),
            left: ScreenUtils.getWidth(619),
            top: ScreenUtils.getHeight(433),
          ),
          Positioned(
            child: Container(
              height: ScreenUtils.getHeight(231),
              width: ScreenUtils.getWidth(514),
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [],
              ),
            ),
            left: ScreenUtils.getWidth(623),
            top: ScreenUtils.getHeight(852),
          ),
          Positioned(
            child: Container(
              height: ScreenUtils.getHeight(417),
              width: ScreenUtils.getWidth(1124),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [],
              ),
            ),
            left: ScreenUtils.getWidth(13),
            top: ScreenUtils.getHeight(1121),
          ),
        ]));
  }
}
