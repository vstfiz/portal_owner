import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/custom/state_management/current_state.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';


class SideBarTab extends StatefulWidget {
  final String name;
  final int index;
  final String imageName;

  @override
  _SideBarTabState createState() => _SideBarTabState();

  const SideBarTab(this.name, this.index,this.imageName);
}

class _SideBarTabState extends State<SideBarTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: ScreenUtils.width / 6,
            height: ScreenUtils.height / 15,
            decoration: BoxDecoration(
                color: Colors.white,),
              child: Row(
                children: [
                  CurrentState.selectedIndex==widget.index?Container(
                    width: ScreenUtils.getWidth(5.0),
                    height: ScreenUtils.height / 15,
                    decoration: BoxDecoration(
                      color: Color(0xFF5DB3C1),
                      borderRadius: BorderRadius.circular(ScreenUtils.getWidth(10000))
                    ),
                  ):const SizedBox(),
                  SizedBox(
                    width: ScreenUtils.getWidth(30),
                  ),
                  Image.asset(widget.imageName,height: ScreenUtils.getHeight(30),width: ScreenUtils.getWidth(30),color: CurrentState.selectedIndex==widget.index?Color(0xFF5DB3C1):Color(0xFF7D86A9),),
                  SizedBox(
                    width: ScreenUtils.getWidth(30),
                  ),
                   Text(
                    widget.name,
                    style:  GoogleFonts.roboto(
                        fontSize: CurrentState.selectedIndex==widget.index?16:17,
                        fontWeight: CurrentState.selectedIndex==widget.index?FontWeight.w500:FontWeight.w400,
                        color: CurrentState.selectedIndex==widget.index?const Color(0xFF5DB3C1):const Color(0xFF7D86A9)
                    ),
                  )
                ],
            ),
          );
  }
}