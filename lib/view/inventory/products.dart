import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/custom/state_management/current_state.dart';
import 'package:portal_owner/utils/colors/colors.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/warehouse/view_warehouse.dart';

class Products extends StatefulWidget{
  @override
  _ProductsState createState()=> _ProductsState();
}
class _ProductsState extends State<Products> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtils.width * (5 / 6),
        height: double.infinity,
        child: Stack(children: [
          Positioned(
              top: ScreenUtils.getHeight(136),
              left: ScreenUtils.getWidth(31),
              child: Container(
                width: ScreenUtils.getWidth(1160),
                child: DataTable(
                    // columnSpacing:
                    //     ScreenUtils.getWidth(80),
                    dataRowColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    dataRowHeight: ScreenUtils.getHeight(70),
                    columns: <DataColumn>[
                      DataColumn(
                          label: Text(
                        'Product Id',
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Brands',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Photo',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Product Name',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Product Number',
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Category',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Availability',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Seller Name',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        'Date',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                      DataColumn(
                          label: Text(
                        '',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      )),
                    ],
                    rows:
                        List.generate(CurrentState.warehouses.length, (index) {
                      return DataRow(cells: <DataCell>[
                        DataCell(Text(
                          '1234566',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Text(
                          'Adidas',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Container(
                          height: ScreenUtils.getHeight(33),
                          width: ScreenUtils.getWidth(46),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  ScreenUtils.getWidth(8)),
                              image: DecorationImage(
                                  image: AssetImage(Images.user))),
                        )),
                        DataCell(Text(
                          'Push Tap - Steel in 4 sizes',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Text(
                          '2445- HAM',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Text(
                          'Tap',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Row(
                          children: [
                            CircleAvatar(
                              radius: ScreenUtils.getHeight(5.0),
                              backgroundColor: value?Color(0xFF51C03E):Colors.red,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              value?'Active':'Inactive',
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            FlutterSwitch(
                              value: value,
                              onToggle: (val) {
                                setState((){
                                  value = val;
                                });
                              },
                              height: ScreenUtils.getHeight(20.34),
                              width: ScreenUtils.getWidth(24.31),
                              activeColor: ColorStyle.selected,
                              inactiveColor: Colors.red,
                              toggleSize: ScreenUtils.getHeight(20),

                            )
                          ],
                        )),
                        DataCell(Text(
                          'Elenoar Prad',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Text(
                          '03-02-2022',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Container(
                          child: TextButton(
                              onPressed: () {
                                CurrentState.pageController.jumpToPage(9);
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: ColorStyle.deselected,
                                  size: ScreenUtils.getWidth(18))),
                        )),
                      ]);
                    })),
              )),
          Positioned(
              top: ScreenUtils.getHeight(43),
              left: ScreenUtils.getWidth(1062),
              child: Container(
                width: ScreenUtils.getWidth(112),
                height: ScreenUtils.getHeight(40),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(20)),
                    border: Border.all(color: Color(0xFF5DB3C1), width: 2.0)),
                child: TextButton(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Icon(Icons.share,
                          color: Colors.blue, size: ScreenUtils.getWidth(15)),
                      SizedBox(
                        width: ScreenUtils.getWidth(15),
                      ),
                      Text(
                        'Export',
                        style: GoogleFonts.roboto(
                            fontSize: 15, color: Color(0xFF5DB3C1)),
                      )
                    ])),
              )),
          Positioned(
              top: ScreenUtils.getHeight(43),
              left: ScreenUtils.getWidth(13),
              child: Container(
                  width: ScreenUtils.getWidth(115),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(3)),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(
                            Icons.search,
                            color: Color(0xFF7D86A9),
                            size: ScreenUtils.getWidth(12),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: ScreenUtils.getWidth(10),
                          right: ScreenUtils.getWidth(10),
                          bottom: ScreenUtils.getHeight(10),
                        ),
                        hintText: 'Product ID',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
          Positioned(
              top: ScreenUtils.getHeight(43),
              left: ScreenUtils.getWidth(142),
              child: Container(
                  width: ScreenUtils.getWidth(95),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(3)),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF7D86A9),
                            size: ScreenUtils.getWidth(12),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: ScreenUtils.getWidth(10),
                          right: ScreenUtils.getWidth(10),
                          bottom: ScreenUtils.getHeight(10),
                        ),
                        hintText: 'Brands',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
          Positioned(
              top: ScreenUtils.getHeight(43),
              left: ScreenUtils.getWidth(337),
              child: Container(
                  width: ScreenUtils.getWidth(163),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(3)),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(
                            Icons.search,
                            color: Color(0xFF7D86A9),
                            size: ScreenUtils.getWidth(12),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: ScreenUtils.getWidth(10),
                          right: ScreenUtils.getWidth(10),
                          bottom: ScreenUtils.getHeight(10),
                        ),
                        hintText: 'Product Name',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
          Positioned(
              top: ScreenUtils.getHeight(43),
              left: ScreenUtils.getWidth(529),
              child: Container(
                  width: ScreenUtils.getWidth(159),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(3)),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(
                            Icons.search,
                            color: Color(0xFF7D86A9),
                            size: ScreenUtils.getWidth(12),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: ScreenUtils.getWidth(10),
                          right: ScreenUtils.getWidth(10),
                          bottom: ScreenUtils.getHeight(10),
                        ),
                        hintText: 'Product Number',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
          Positioned(
              top: ScreenUtils.getHeight(43),
              left: ScreenUtils.getWidth(699),
              child: Container(
                  width: ScreenUtils.getWidth(103),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(3)),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF7D86A9),
                            size: ScreenUtils.getWidth(12),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: ScreenUtils.getWidth(10),
                          right: ScreenUtils.getWidth(10),
                          bottom: ScreenUtils.getHeight(10),
                        ),
                        hintText: 'Category',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
          Positioned(
              top: ScreenUtils.getHeight(43),
              left: ScreenUtils.getWidth(831),
              child: Container(
                  width: ScreenUtils.getWidth(160),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(3)),
                    border:
                        Border.all(color: ColorStyle.deselected, width: 1.0),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF7D86A9),
                            size: ScreenUtils.getWidth(12),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: ScreenUtils.getWidth(10),
                          right: ScreenUtils.getWidth(10),
                          bottom: ScreenUtils.getHeight(10),
                        ),
                        hintText: 'Seller Name',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
        ]));
  }
}
