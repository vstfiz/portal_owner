import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/custom/state_management/current_state.dart';
import 'package:portal_owner/utils/colors/colors.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/warehouse/view_warehouse.dart';

class BrandDetails extends StatefulWidget {
  @override
  _BrandDetailsState createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtils.width * 5/6,
      height: ScreenUtils.getHeight(1600),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: ScreenUtils.width * 5/6,
              height: ScreenUtils.getHeight(1600),),
            Positioned(
              child: Container(
                width: ScreenUtils.getWidth(18),
                height: ScreenUtils.getHeight(20),
                child: TextButton(
                  onPressed: () {
                    CurrentState.pageController.animateToPage(3,curve: Curves.decelerate,duration: const Duration(milliseconds: 750));
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorStyle.deselected,
                  ),
                ),
              ),
              top: ScreenUtils.getHeight(45.57),
              left: ScreenUtils.getWidth(13.59),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Images.user),
                    ),
                    shape: BoxShape.circle),
                height: ScreenUtils.getHeight(117),
                width: ScreenUtils.getHeight(117),
              ),
              left: ScreenUtils.getWidth(77),
              top: ScreenUtils.getHeight(31),
            ),

            Positioned(
              child: Container(
                height: ScreenUtils.getHeight(441),width: ScreenUtils.getWidth(473),
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              Images.user,
                            ),
                            fit: BoxFit.cover
                        ),
                      ),
                      width: ScreenUtils.getWidth(200),
                      height: ScreenUtils.getHeight(250),
                    ),
                      top: ScreenUtils.getHeight(10),),
                    Positioned(child: Row(
                        children: List.generate(6, (index){
                          return Padding(padding: EdgeInsets.symmetric(horizontal: 3.0),child: SizedBox(
                            width: ScreenUtils.getWidth(48),
                            height: ScreenUtils.getHeight(5),
                            child: Divider(
                              color: ColorStyle.selected,
                              thickness: 3.0,
                            ),
                          ),);
                        })
                    ),top: ScreenUtils.getHeight(270),),
                    Positioned(child: Row(
                        children: List.generate(5, (index){
                          return Padding(padding: EdgeInsets.symmetric(horizontal: 7.0),child: Container(
                            decoration: BoxDecoration(
                              border: index==0?Border.all(
                                  color: ColorStyle.selected,
                                  width: 2.0
                              ):null,
                              image: DecorationImage(
                                  image: AssetImage(
                                    Images.user,

                                  ),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(ScreenUtils.getWidth(8.0)),
                            ),
                            width: ScreenUtils.getWidth(68),
                            height: ScreenUtils.getHeight(81),
                          ),);
                        })
                    ),top: ScreenUtils.getHeight(312),),

                  ],
                ),
              ),
              left: ScreenUtils.getWidth(40),
              top: ScreenUtils.getHeight(179),
            ),
            Positioned(
              child: Text(
                'Jaquar',
                style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: ColorStyle.textBlack),
              ),
              left: ScreenUtils.getWidth(229),
              top: ScreenUtils.getHeight(72),
            ),
            Positioned(
              child: Text(
                'Brand Description',
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              left: ScreenUtils.getWidth(576),
              top: ScreenUtils.getHeight(208),
            ),
            Positioned(
              child: Container(
                height: ScreenUtils.getHeight(383),width: ScreenUtils.getWidth(492),
                child: Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7)),
                ),
              ),
              left: ScreenUtils.getWidth(579),
              top: ScreenUtils.getHeight(237),
            ),
            Positioned(
                top: ScreenUtils.getHeight(650),
                left: ScreenUtils.getWidth(40),
                child: Container(
                  width: ScreenUtils.getWidth(1130),
                  color: Colors.white,
                  height: ScreenUtils.getHeight(600),
                  child: DataTable(
                    // columnSpacing:
                    //     ScreenUtils.getWidth(80),
                      dataRowColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      dataRowHeight: ScreenUtils.getHeight(70),
                      columns: <DataColumn>[
                        DataColumn(
                            label: Text(
                              'ID',
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
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
                              'Product',
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF7D86A9)),
                            )),
                        DataColumn(
                            label: Text(
                              'Category',
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF7D86A9)),
                            )),
                        DataColumn(
                            label: Text(
                              'Sub Category',
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF7D86A9)),
                            )),
                        DataColumn(
                            label: Text(
                              'Sub Sub Category',
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
                      rows:
                      List.generate(CurrentState.warehouses.length, (index) {
                        return DataRow(cells: <DataCell>[
                          DataCell(Text(
                            '21331',
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )),
                          DataCell(Container(
                            height: ScreenUtils.getHeight(30),
                            width: ScreenUtils.getHeight(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(Images.user))),
                          )),
                          DataCell(Text(
                            'Tap1',
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
                          DataCell(Text(
                            'Tap2',
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )),
                          DataCell(Text(
                            'Tap3',
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
                                          address: CurrentState.warehouses[index]
                                          [1],
                                        );
                                      });
                                },
                                child: Icon(Icons.arrow_forward_ios,
                                    color: ColorStyle.deselected,
                                    size: ScreenUtils.getWidth(18))),
                          )),
                        ]);
                      })),
                )),
          ],
        ),
      ),
    );
  }
}
