import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portal_owner/custom/state_management/current_state.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/widgets/sidebar/sidebar_tab.dart';

class SideBar extends StatefulWidget {
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        height: ScreenUtils.height * 31 / 33,
        width: ScreenUtils.width / 6,
        color: Colors.white,
        child: ListView(
          children: List.generate(CurrentState.tabs.length, (index){
            return TextButton(
              onPressed: (){
                setState(() {
                  CurrentState.selectedIndex = index;
                  CurrentState.pageController.animateToPage(index, curve: Curves.decelerate, duration: Duration(milliseconds: 750));
                  // CurrentState.pageController.jumpToPage(index);
                });
              },
              child: SideBarTab(CurrentState.tabs[index][0], index, CurrentState.tabs[index][2]),
            );
          }),
        ),
      ),
    );
  }
}