import 'package:flutter/material.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/homescreen/homescreen.dart';
import 'package:portal_owner/view/warehouse/view_warehouse.dart';
import 'package:portal_owner/view/warehouse/warehouse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        ScreenUtils.height = constraints.maxHeight;
        ScreenUtils.width = constraints.maxWidth;
        print(ScreenUtils.height);
        print(ScreenUtils.width);
        return MaterialApp(
            color: Colors.white,
            title: 'Owner Portal',
            theme: ThemeData(
              primarySwatch: Colors.lightBlue,
            ),
            home: HomeScreen()
        );
      });
    });
  }
}