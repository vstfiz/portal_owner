import 'dart:html';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:portal_owner/custom/arrow_clipper/arrow_clipper.dart';
import 'package:portal_owner/custom/state_management/current_state.dart';
import 'package:portal_owner/model/notifications/notifications.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

final _data1 = <double, double>{1: 10, 2: 15, 3: 20, 4: 28, 5: 34, 6: 50};
final _data2 = <double, double>{1: 8, 2: 12, 3: 27, 4: 31, 5: 36, 6: 45};
final _data3 = <double, double>{1: 45, 2: 6, 3: 50, 4: 18, 5: 25, 6: 5};

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double earnings = 1450;
  String selectedTimePeriod = 'Daily';

  final spots1 = <FlSpot>[
    for (final entry in _data1.entries) FlSpot(entry.key, entry.value)
  ];
  final spots2 = <FlSpot>[
    for (final entry in _data2.entries) FlSpot(entry.key, entry.value)
  ];
  final spots3 = <FlSpot>[
    for (final entry in _data3.entries) FlSpot(entry.key, entry.value)
  ];


  var notifications = [
    Notifications(
        notificationContent: 'Your product “ METMO “ has been approved Lorem ipsum dolor sit amet',
        time: DateTime.now(),
        isUnread: true
    ),
    Notifications(
        notificationContent: 'METMO has been approved Lorem ipsum dolor sit amet. ',
        time: DateTime.now(),
        isUnread: true
    ),
    Notifications(
        notificationContent: 'Approved Lorem ipsum dolor sit amet.',
        time: DateTime.now(),
        isUnread: false
    )
  ];

  bool isList;

  @override
  void initState() {
    double columnHeight = notifications.length * ScreenUtils.getHeight(83);
    isList = columnHeight >= ScreenUtils.height;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final lineChartData = LineChartData(
      // The data to show.
      lineBarsData: [
        // ! Here we can style each data line.
        LineChartBarData(
          spots: spots1,
          colors: [Colors.blue],
          barWidth: 4,
          isCurved: false,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(show: false, colors: [Colors.blue[200]]),
        ),
        LineChartBarData(
          spots: spots2,
          colors: [Colors.red],
          barWidth: 4,
          isCurved: false,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(show: false, colors: [Colors.red[200]]),
        ),
        LineChartBarData(
          spots: spots3,
          colors: [Colors.green],
          barWidth: 4,
          isCurved: false,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(show: false, colors: [Colors.red[200]]),
        ),
      ],
      // ! Behavior when touching the chart:
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (_, __) {},
        handleBuiltInTouches: true,
      ),
      // ! Borders:
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Colors.greenAccent, width: 4),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      ),
      // ! Grid behavior:
      gridData: FlGridData(show: true),
      // ! Axis title
      axisTitleData: FlAxisTitleData(
        show: true,
        bottomTitle: AxisTitle(titleText: 'Month', showTitle: true),
        leftTitle: AxisTitle(titleText: 'Value', showTitle: true),
      ),
      // ! Ticks in the axis
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true, // this is false by-default.
          // ! Decides how to show bottom titles,
          // here we convert double to month names
          getTitles: (double val) =>
              DateFormat.MMM().format(DateTime(2020, val.toInt())),
        ),
        leftTitles: SideTitles(
          showTitles: true,
          // ! Decides how to show left titles,
          // here we skip some values by returning ''.
          getTitles: (double val) {
            if (val.toInt() % 5 != 0) return '';
            return '${val.toInt()}';
          },
        ),
      ),
    );
    final lineChartData1 = LineChartData(
      lineBarsData: [
        LineChartBarData(
          spots: spots1,
          colors: [Colors.grey],
          barWidth: 4,
          isCurved: true,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(show: false, colors: [Colors.blue[200]]),
        ),
        LineChartBarData(
          spots: spots2,
          colors: [Colors.brown],
          barWidth: 4,
          isCurved: true,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(show: false, colors: [Colors.red[200]]),
        ),
        LineChartBarData(
          spots: spots3,
          colors: [Colors.black],
          barWidth: 4,
          isCurved: true,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(show: false, colors: [Colors.red[200]]),
        ),
      ],
      // ! Behavior when touching the chart:
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (_, __) {},
        handleBuiltInTouches: true,
      ),
      // ! Borders:
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Colors.greenAccent, width: 4),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      ),
      // ! Grid behavior:
      gridData: FlGridData(show: true),
      // ! Axis title
      axisTitleData: FlAxisTitleData(
        show: true,
        bottomTitle: AxisTitle(titleText: 'Month', showTitle: true),
        leftTitle: AxisTitle(titleText: 'Value', showTitle: true),
      ),
      // ! Ticks in the axis
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTitles: (double val) =>
              DateFormat.MMM().format(DateTime(2020, val.toInt())),
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTitles: (double val) {
            if (val.toInt() % 5 != 0) return '';
            return '${val.toInt()}';
          },
        ),
      ),
    );
    final barChartData = BarChartData(barGroups: [
      BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
                y: 50,
                width: ScreenUtils.getWidth(10),
                borderRadius: BorderRadius.circular(0),
                colors: [Color(0xFF33A4B7)]),
            BarChartRodData(
                y: 80,
                width: ScreenUtils.getWidth(10),
                borderRadius: BorderRadius.circular(0),
                colors: [Color(0xFF126F7E)])
          ],
          barsSpace: ScreenUtils.getWidth(5)),
      BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
                y: 85,
                borderRadius: BorderRadius.circular(0),
                width: ScreenUtils.getWidth(10),
                colors: [Color(0xFF33A4B7)]),
            BarChartRodData(
                y: 10,
                width: ScreenUtils.getWidth(10),
                borderRadius: BorderRadius.circular(0),
                colors: [Color(0xFF126F7E)])
          ],
          barsSpace: ScreenUtils.getWidth(5)),
      BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
                borderRadius: BorderRadius.circular(0),
                y: 74,
                width: ScreenUtils.getWidth(10),
                colors: [Color(0xFF33A4B7)]),
            BarChartRodData(
                y: 38,
                borderRadius: BorderRadius.circular(0),
                width: ScreenUtils.getWidth(10),
                colors: [Color(0xFF126F7E)])
          ],
          barsSpace: ScreenUtils.getWidth(5)),
      BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
                y: 35,
                borderRadius: BorderRadius.circular(0),
                width: ScreenUtils.getWidth(10),
                colors: [Color(0xFF33A4B7)]),
            BarChartRodData(
                y: 60,
                borderRadius: BorderRadius.circular(0),
                width: ScreenUtils.getWidth(10),
                colors: [Color(0xFF126F7E)])
          ],
          barsSpace: ScreenUtils.getWidth(5)),
    ], minY: 0, maxY: 100, groupsSpace: ScreenUtils.getWidth(20));
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
              Images.dashboard,
              height: ScreenUtils.getHeight(25),
              width: ScreenUtils.getWidth(29),
            ),
            top: ScreenUtils.getHeight(43),
            left: ScreenUtils.getWidth(9),
          ),
          Positioned(
            child: Text(
              'Dashboard',
              style: GoogleFonts.roboto(
                  fontSize: 35,
                  color: Color(0xFF5DB3C1),
                  fontWeight: FontWeight.w500),
            ),
            top: ScreenUtils.getHeight(35),
            left: ScreenUtils.getWidth(64),
          ),
          Positioned(
            child: Text(
              'Here is what have changed since your last visit at 12 November 2018 - 12:00 PM',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Color(0xFF7D86A9),
                  fontWeight: FontWeight.w300),
            ),
            top: ScreenUtils.getHeight(78),
            left: ScreenUtils.getWidth(9),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF33A4B7),
                  borderRadius:
                  BorderRadius.circular(ScreenUtils.getWidth(10))),
              height: ScreenUtils.getHeight(110),
              width: ScreenUtils.getWidth(260),
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      '112',
                      style: GoogleFonts.roboto(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(15),
                    left: ScreenUtils.getWidth(35),
                  ),
                  Positioned(
                    child: Text(
                      'Orders Pending',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(71),
                    left: ScreenUtils.getWidth(35),
                  ),
                ],
              ),
            ),
            top: ScreenUtils.getHeight(131),
            left: ScreenUtils.getWidth(8),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF126F7E),
                  borderRadius:
                  BorderRadius.circular(ScreenUtils.getWidth(10))),
              height: ScreenUtils.getHeight(110),
              width: ScreenUtils.getWidth(260),
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      '233',
                      style: GoogleFonts.roboto(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(15),
                    left: ScreenUtils.getWidth(35),
                  ),
                  Positioned(
                    child: Text(
                      'Orders Completed',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(71),
                    left: ScreenUtils.getWidth(35),
                  ),
                ],
              ),
            ),
            top: ScreenUtils.getHeight(131),
            left: ScreenUtils.getWidth(298),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF416368),
                  borderRadius:
                  BorderRadius.circular(ScreenUtils.getWidth(10))),
              height: ScreenUtils.getHeight(110),
              width: ScreenUtils.getWidth(260),
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      '445',
                      style: GoogleFonts.roboto(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(15),
                    left: ScreenUtils.getWidth(35),
                  ),
                  Positioned(
                    child: Text(
                      'Total Orders',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(71),
                    left: ScreenUtils.getWidth(35),
                  ),
                ],
              ),
            ),
            top: ScreenUtils.getHeight(131),
            left: ScreenUtils.getWidth(588),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF183438),
                  borderRadius:
                  BorderRadius.circular(ScreenUtils.getWidth(10))),
              height: ScreenUtils.getHeight(110),
              width: ScreenUtils.getWidth(260),
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      '334444',
                      style: GoogleFonts.roboto(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(15),
                    left: ScreenUtils.getWidth(35),
                  ),
                  Positioned(
                    child: Text(
                      'Approved Products',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    top: ScreenUtils.getHeight(71),
                    left: ScreenUtils.getWidth(35),
                  ),
                ],
              ),
            ),
            top: ScreenUtils.getHeight(131),
            left: ScreenUtils.getWidth(878),
          ),
          Positioned(
            child: Text(
              'analytics'.toUpperCase(),
              style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Color(0xFF7D86A9),
                  fontWeight: FontWeight.w500),
            ),
            top: ScreenUtils.getHeight(279),
            left: ScreenUtils.getWidth(9),
          ),
          Positioned(
            child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(ScreenUtils.getWidth(20))),
                child: Container(
                    height: ScreenUtils.getHeight(271),
                    width: ScreenUtils.getWidth(342),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(20))),
                    child: Center(
                        child: Container(
                            height: ScreenUtils.getHeight(230),
                            width: ScreenUtils.getWidth(300),
                            child: BarChart(barChartData))))),
            top: ScreenUtils.getHeight(329),
            left: ScreenUtils.getWidth(2),
          ),
          Positioned(
            child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(ScreenUtils.getWidth(20))),
                child: Container(
                    height: ScreenUtils.getHeight(271),
                    width: ScreenUtils.getWidth(342),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(20))),
                    child: Center(
                        child: Container(
                            height: ScreenUtils.getHeight(230),
                            width: ScreenUtils.getWidth(300),
                            child: LineChart(lineChartData1))))),
            top: ScreenUtils.getHeight(327),
            left: ScreenUtils.getWidth(406),
          ),
          Positioned(
            child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(ScreenUtils.getWidth(20))),
                child: Container(
                    height: ScreenUtils.getHeight(271),
                    width: ScreenUtils.getWidth(342),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(ScreenUtils.getWidth(20))),
                    child: Center(
                        child: Container(
                            height: ScreenUtils.getHeight(230),
                            width: ScreenUtils.getWidth(300),
                            child: LineChart(lineChartData))))),
            top: ScreenUtils.getHeight(329),
            left: ScreenUtils.getWidth(793),
          ),
          Positioned(
            child: Text(
              'merchants'.toUpperCase(),
              style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Color(0xFF7D86A9),
                  fontWeight: FontWeight.w500),
            ),
            top: ScreenUtils.getHeight(633),
            left: ScreenUtils.getWidth(9),
          ),
          Positioned(
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(ScreenUtils.getWidth(20))),
              child: Container(
                height: ScreenUtils.getHeight(220),
                width: ScreenUtils.getWidth(744),
                child: Stack(
                  children: [
                    Positioned(
                      top: ScreenUtils.getHeight(24),
                      right: ScreenUtils.getWidth(30),
                      child: DropdownButton(
                        value: selectedTimePeriod,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            selectedTimePeriod = newValue;
                          });
                        },
                        underline: const SizedBox(),
                        items: ['Daily', 'Weekly', 'Monthly', 'Yearly']
                            .map((String value) {
                          return DropdownMenuItem(
                            child: Text(
                              value,
                              style: GoogleFonts.roboto(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            value: value,
                          );
                        }).toList(),
                      ),
                    ),
                    Positioned(
                      child: Text(
                        'Product Statistics',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF202020)),
                      ),
                      top: ScreenUtils.getHeight(20),
                      left: ScreenUtils.getWidth(20),
                    ),
                    Positioned(
                      child: Text(
                        '4 Best Selling Products',
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      ),
                      top: ScreenUtils.getHeight(47),
                      left: ScreenUtils.getWidth(20),
                    ),
                    Positioned(
                      child: Container(
                        width: ScreenUtils.getWidth(702),
                        height: ScreenUtils.getHeight(18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: ScreenUtils.getWidth(130),
                              child: Text(
                                'ABC Product',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                            Container(
                                width: ScreenUtils.getWidth(479),
                                child: LinearProgressIndicator(
                                  value: 201 / 479,
                                  color: Color(0xFF5DB3C1),
                                  backgroundColor: Color(0xFFF4F6FF),
                                )),
                            Container(
                              width: ScreenUtils.getWidth(92),
                              child: Text(
                                '\$2123',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      top: ScreenUtils.getHeight(85),
                      left: ScreenUtils.getWidth(21),
                    ),
                    Positioned(
                      child: Container(
                        width: ScreenUtils.getWidth(702),
                        height: ScreenUtils.getHeight(18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: ScreenUtils.getWidth(130),
                              child: Text(
                                'Product 45',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                            Container(
                                width: ScreenUtils.getWidth(479),
                                child: LinearProgressIndicator(
                                  value: 121 / 479,
                                  color: Color(0xFF5DB3C1),
                                  backgroundColor: Color(0xFFF4F6FF),
                                )),
                            Container(
                              width: ScreenUtils.getWidth(92),
                              child: Text(
                                '\$1000',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      top: ScreenUtils.getHeight(116),
                      left: ScreenUtils.getWidth(21),
                    ),
                    Positioned(
                      child: Container(
                        width: ScreenUtils.getWidth(702),
                        height: ScreenUtils.getHeight(18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: ScreenUtils.getWidth(130),
                              child: Text(
                                'Product 9',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                            Container(
                                width: ScreenUtils.getWidth(479),
                                child: LinearProgressIndicator(
                                  value: 335 / 479,
                                  color: Color(0xFF5DB3C1),
                                  backgroundColor: Color(0xFFF4F6FF),
                                )),
                            Container(
                              width: ScreenUtils.getWidth(92),
                              child: Text(
                                '\$4000',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      top: ScreenUtils.getHeight(147),
                      left: ScreenUtils.getWidth(21),
                    ),
                    Positioned(
                      child: Container(
                        width: ScreenUtils.getWidth(702),
                        height: ScreenUtils.getHeight(18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: ScreenUtils.getWidth(130),
                              child: Text(
                                'Product 2',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                            Container(
                                width: ScreenUtils.getWidth(479),
                                child: LinearProgressIndicator(
                                  value: 56 / 479,
                                  color: Color(0xFF5DB3C1),
                                  backgroundColor: Color(0xFFF4F6FF),
                                )),
                            Container(
                              width: ScreenUtils.getWidth(92),
                              child: Text(
                                '\$700',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7D86A9)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      top: ScreenUtils.getHeight(178),
                      left: ScreenUtils.getWidth(21),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(ScreenUtils.getWidth(20))),
              ),
            ),
            top: ScreenUtils.getHeight(678),
            left: ScreenUtils.getWidth(9),
          ),
          Positioned(
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(ScreenUtils.getWidth(20))),
              child: Container(
                height: ScreenUtils.getHeight(220),
                width: ScreenUtils.getWidth(359),
                child: Stack(
                  children: [
                    Positioned(
                      top: ScreenUtils.getHeight(24),
                      right: ScreenUtils.getWidth(30),
                      child: DropdownButton(
                        value: selectedTimePeriod,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            selectedTimePeriod = newValue;
                          });
                        },
                        underline: const SizedBox(),
                        items: ['Daily', 'Weekly', 'Monthly', 'Yearly']
                            .map((String value) {
                          return DropdownMenuItem(
                            child: Text(
                              value,
                              style: GoogleFonts.roboto(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            value: value,
                          );
                        }).toList(),
                      ),
                    ),
                    Positioned(
                      child: Text(
                        'Earning',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF202020)),
                      ),
                      top: ScreenUtils.getHeight(20),
                      left: ScreenUtils.getWidth(20),
                    ),
                    Positioned(
                      child: Text(
                        '\$3324',
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D86A9)),
                      ),
                      top: ScreenUtils.getHeight(47),
                      left: ScreenUtils.getWidth(20),
                    ),
                    Positioned(
                      child: Text(
                        'Payments Received',
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF202020)),
                      ),
                      top: ScreenUtils.getHeight(97),
                      left: ScreenUtils.getWidth(43),
                    ),
                    Positioned(
                      child: Text(
                        '\$432',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF202020)),
                      ),
                      top: ScreenUtils.getHeight(120),
                      left: ScreenUtils.getWidth(43),
                    ),
                    Positioned(
                      child: Text(
                        'Yet to Received',
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF202020)),
                      ),
                      top: ScreenUtils.getHeight(164),
                      left: ScreenUtils.getWidth(43),
                    ),
                    Positioned(
                      child: Text(
                        '\$556',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF202020)),
                      ),
                      top: ScreenUtils.getHeight(187),
                      left: ScreenUtils.getWidth(43),
                    ),
                    Positioned(
                      child: Container(
                          height: ScreenUtils.getHeight(110),
                          width: ScreenUtils.getWidth(110),
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: SleekCircularSlider(
                              appearance: CircularSliderAppearance(
                                angleRange: 360,
                                startAngle: 270,
                                customColors: CustomSliderColors(
                                    dotColor: Color(0xFF5DB3C1),
                                    progressBarColor: Color(0xFF5DB3C1),
                                    trackColor: Colors.grey),
                                customWidths: CustomSliderWidths(
                                    trackWidth: 4.0,
                                    progressBarWidth: 4.0,
                                    handlerSize: 8.0),
                              ),
                              min: 0,
                              max: 5000,
                              initialValue: 1500,
                              innerWidget: (double value) {
                                return Container(
                                  height: ScreenUtils.getHeight(80),
                                  width: ScreenUtils.getWidth(80),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$${value.ceil().toInt()}',
                                        style: GoogleFonts.roboto(
                                            fontSize: 20,
                                            color: Color(0xFF202020),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: ScreenUtils.getHeight(3),
                                      ),
                                      Text(
                                        'Earned',
                                        style: GoogleFonts.roboto(
                                            fontSize: 12.5,
                                            color: Color(0xFF7D86A9),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              onChange: (double value) {
                                setState(() {
                                  earnings = value;
                                });
                              })),
                      top: ScreenUtils.getHeight(70),
                      right: ScreenUtils.getWidth(22),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(ScreenUtils.getWidth(20))),
              ),
            ),
            top: ScreenUtils.getHeight(678),
            left: ScreenUtils.getWidth(780),
          ),

        ],
      ),
    );
  }
}
