import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/custom/state_management/current_state.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/warehouse/view_warehouse.dart';

class warehouseTile extends StatelessWidget {


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
                width: ScreenUtils.getWidth(1130),
                child: DataTable(
                  // columnSpacing:
                  //     ScreenUtils.getWidth(80),
                    dataRowColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    dataRowHeight: ScreenUtils.getHeight(70),
                    columns: <DataColumn>[
                      DataColumn(
                          label: Text(
                            'Name',
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7D86A9)),
                          )),
                      DataColumn(
                          label: Text(
                            'Address',
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7D86A9)),
                          )),
                      DataColumn(
                          label: Text(
                            'Attributes',
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
                      DataColumn(
                          label: Text(
                            'Actions',
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
                    rows: List.generate(CurrentState.warehouses.length, (index) {
                      return DataRow(cells: <DataCell>[
                        DataCell(Text(
                          CurrentState.warehouses[index][0],
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Text(
                          CurrentState.warehouses[index][1],
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Text(
                          CurrentState.warehouses[index][2],
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        DataCell(Container(
                        )),
                        DataCell(Container(
                        )),
                        DataCell(Container(
                          child: TextButton(
                              onPressed: () {
                                showDialog(
                                    barrierDismissible: false,
                                    barrierColor:
                                    Color(0xFF5DB3C1).withOpacity(0.6),
                                    context: context,
                                    builder: (context) {
                                      return ViewWarehouse(
                                        name: CurrentState.warehouses[index][0],
                                        address: CurrentState.warehouses[index][1],
                                      );
                                    });
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: ScreenUtils.getWidth(24))),
                        )),
                      ]);
                    })),
              )),
          Positioned(
              top: ScreenUtils.getHeight(57),
              left: ScreenUtils.getWidth(1062),
              child: Container(
                width: ScreenUtils.getWidth(112),
                height: ScreenUtils.getHeight(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenUtils.getWidth(20)),
                    border: Border.all(color: Color(0xFF5DB3C1), width: 2.0)),
                child: TextButton(
                    child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [
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
              top: ScreenUtils.getHeight(69),
              left: ScreenUtils.getWidth(44),
              child: Container(
                  width: ScreenUtils.getWidth(184),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(ScreenUtils.getWidth(3)),
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
                        hintText: 'Name',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
          Positioned(
              top: ScreenUtils.getHeight(69),
              left: ScreenUtils.getWidth(237),
              child: Container(
                  width: ScreenUtils.getWidth(151),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(ScreenUtils.getWidth(3)),
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
                        hintText: 'Address',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
          Positioned(
              top: ScreenUtils.getHeight(69),
              left: ScreenUtils.getWidth(400),
              child: Container(
                  width: ScreenUtils.getWidth(140),
                  height: ScreenUtils.getHeight(35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(ScreenUtils.getWidth(3)),
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
                        hintText: 'Attributes',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFF7D86A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ))),
        ]));
  }
}
