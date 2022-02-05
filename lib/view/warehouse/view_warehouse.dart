import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/utils/colors/colors.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';

class ViewWarehouse extends StatefulWidget {
  final String name;
  final String address;

  ViewWarehouse({this.name, this.address});

  @override
  _ViewWarehouseState createState() => _ViewWarehouseState();
}

class _ViewWarehouseState extends State<ViewWarehouse> {
  @override
  initState() {
    super.initState();
  }

  List<String> attributes = ['a1','a2','a3','a4','a5','a6'];

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(ScreenUtils.getWidth(20.0))),
            child: Container(
                width: ScreenUtils.getWidth(473),
                height: ScreenUtils.getHeight(852),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(20.0)),
                    color: Colors.white),
                child: Stack(
                  // fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        top: ScreenUtils.getHeight(26),
                        right: ScreenUtils.getWidth(20),
                        child: TextButton(
                          child: Icon(
                            Icons.clear,
                            color: ColorStyle.selected,
                            size: 20,
                          ),
                          onPressed: () => Navigator.pop(context),
                        )),
                    Positioned(
                      child: Row(
                        children: [
                          Image.asset(
                            Images.warehouse,
                            color: Color(0xFF4C4C4C),
                            height: ScreenUtils.getHeight(12),
                            width: ScreenUtils.getWidth(16),
                          ),
                          Text(
                            'Warehouse Name',
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      top: ScreenUtils.getHeight(63),
                      left: ScreenUtils.getWidth(70),
                    ),
                    Positioned(
                        top: ScreenUtils.getHeight(90),
                        left: ScreenUtils.getWidth(81),
                        child: Container(
                            width: ScreenUtils.getWidth(311),
                            height: ScreenUtils.getHeight(40),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black.withOpacity(0.2),
                                        width: 1.0))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.name,
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ColorStyle.textBlack),
                                ),
                              ],
                            ))),
                    Positioned(
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xFF4C4C4C),
                            size: ScreenUtils.getWidth(12),
                          ),
                          Text(
                            'Warehouse address',
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      top: ScreenUtils.getHeight(167),
                      left: ScreenUtils.getWidth(70),
                    ),
                    Positioned(
                        top: ScreenUtils.getHeight(194),
                        left: ScreenUtils.getWidth(81),
                        child: Container(
                            width: ScreenUtils.getWidth(311),
                            height: ScreenUtils.getHeight(40),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black.withOpacity(0.2),
                                        width: 1.0))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.address,
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ColorStyle.textBlack),
                                ),
                              ],
                            ))),
                    Positioned(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                ScreenUtils.getWidth(10))),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  ScreenUtils.getWidth(10))),
                          width: ScreenUtils.getWidth(340),
                          height: ScreenUtils.getHeight(107),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Card(
                                    elevation: 3.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            ScreenUtils.getWidth(5))),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              ScreenUtils.getWidth(5)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              Images.maps,
                                            ),
                                            fit: BoxFit.contain,
                                          )),
                                      width: ScreenUtils.getHeight(88),
                                      height: ScreenUtils.getHeight(88),
                                    )),
                                top: ScreenUtils.getHeight(6),
                                left: ScreenUtils.getWidth(10),
                              ),
                              Positioned(
                                child: Text(
                                  'Pin Warehouse Address',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ColorStyle.selected),
                                ),
                                top: ScreenUtils.getHeight(10),
                                left: ScreenUtils.getWidth(124),
                              ),
                              Positioned(
                                child: Text(
                                  widget.address,
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ColorStyle.textBlack),
                                ),
                                top: ScreenUtils.getHeight(73),
                                left: ScreenUtils.getWidth(124),
                              ),
                              Positioned(
                                child: Icon(
                                  Icons.location_on,
                                  color: ColorStyle.selected,
                                  size: ScreenUtils.getWidth(12),
                                ),
                                top: ScreenUtils.getHeight(90),
                                right: ScreenUtils.getWidth(12.4),
                              ),
                            ],
                          ),
                        ),
                      ),
                      top: ScreenUtils.getHeight(254),
                      left: ScreenUtils.getWidth(64),
                    ),
                    Positioned(
                      top: ScreenUtils.getHeight(380),
                      left: ScreenUtils.getWidth(60),
                      child: Container(
                        width: ScreenUtils.getWidth(340),
                        height: ScreenUtils.getHeight(450),
                        child: ListView(
                          children: List.generate(attributes.length, (index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                vertical: ScreenUtils.getHeight(10)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0xFF4C4C4C),
                                          size: ScreenUtils.getWidth(12),
                                        ),
                                        Text(
                                          'Attribute ${index+1}',
                                          style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black.withOpacity(0.7)),
                                        ),
                                      ],
                                    ),
                                  
                                  Container(
                                          width: ScreenUtils.getWidth(311),
                                          height: ScreenUtils.getHeight(40),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black.withOpacity(0.2),
                                                      width: 1.0))),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                attributes[index],
                                                style: GoogleFonts.roboto(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: ColorStyle.textBlack),
                                              ),
                                            ],
                                          ))
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
