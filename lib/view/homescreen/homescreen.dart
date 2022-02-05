import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/custom/arrow_clipper/arrow_clipper.dart';
import 'package:portal_owner/custom/state_management/current_state.dart';
import 'package:portal_owner/model/notifications/notifications.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:portal_owner/view/widgets/sidebar/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGO',style: GoogleFonts.roboto(color: Colors.white),),
        backgroundColor: const Color(0xFF5DB3C1),
        actions: [
          Container(
            width: ScreenUtils.getWidth(79),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
                right:  BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              )
            ),
            child: TextButton(
              onPressed: () {
                setState(() {
                  CurrentState.isNotificationsVisible = !CurrentState.isNotificationsVisible;
                });
                if (kDebugMode) {
                  print(CurrentState.isNotificationsVisible);
                }
                // showDialog(
                //     barrierDismissible: false,
                //     barrierColor:
                //     Color(0xFF5DB3C1).withOpacity(0.6),
                //     context: context,
                //     builder: (context) {
                //       return addExpense(context,);
                //     });
              },
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: ScreenUtils.getWidth(18),
              ),
            ),
          ),
          Container(
              width: ScreenUtils.getWidth(300),
              child: Stack(
                children: [
                  Positioned(
                      left: ScreenUtils.getWidth(21),
                      top: ScreenUtils.getHeight(7),
                      child: Container(
                        width: ScreenUtils.getWidth(54),
                        height: ScreenUtils.getHeight(54),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(Images.user),
                              fit: BoxFit.cover,
                            )),
                      )),
                  Positioned(
                      left: ScreenUtils.getWidth(85),
                      top: ScreenUtils.getHeight(17),
                      child: Container(
                        height: ScreenUtils.getHeight(20),
                      child: Text(
                        'Albert Flores',style: GoogleFonts.roboto(
                        fontSize:14,
                        color:Colors.white,fontWeight: FontWeight.w400
                      ),
                      ),
                      )),Positioned(
                      left: ScreenUtils.getWidth(85),
                      top: ScreenUtils.getHeight(38),
                      child: Container(
                        height: ScreenUtils.getHeight(20),
                        child: Text(
                          'Owner',style: GoogleFonts.roboto(
                            fontSize:13,
                            color:Colors.white
                        ),
                        ),
                      )),

                ],
              )),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: ScreenUtils.width,
            height: ScreenUtils.height,
            color: const Color(0xFF5DB3C1).withOpacity(0.06),
          ),
          Positioned(left: 0.0,top: 0.0,child: SideBar()),
          Positioned(
              left: ScreenUtils.width / 6,
              child: Container(
                height: ScreenUtils.height,
                width: ScreenUtils.width * (5 / 6),
                child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  controller: CurrentState.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return CurrentState.screens[index];
                  },
                ),
              )),
          CurrentState.isNotificationsVisible?Positioned(
            child: ClipPath(
              clipper: ArrowClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 15.0,),
                color: Colors.white,
                width: ScreenUtils.getWidth(370),
                height: isList?ScreenUtils.getHeight(83.0*5)+15:ScreenUtils.getHeight((notifications.length * 83.0))+15,
                child: isList ?ListView(
                  children: _notificationsList(),
                ) : Column(
                  children: _notificationsList(),
                ),
              ),
            ),
            right: ScreenUtils.getWidth(155),
            top: ScreenUtils.getHeight(5),
          ):const SizedBox(),
        ],
      ),
    );
  }
  List<Widget> _notificationsList(){
    return  List.generate(notifications.length, (index) {
      return GestureDetector(
        onTap: (){
    setState(() {
      notifications[index].isUnread = false;
    });
        },
        child: Container(
          width: ScreenUtils.getWidth(370),
          height: ScreenUtils.getHeight(83),
          child: Stack(
            alignment: Alignment.center,
            children: [
              (index == notifications.length-1)?const SizedBox():Positioned(child: SizedBox(
                width: ScreenUtils.getWidth(350),
                child: const Divider(
                  thickness: 0.5,
                  color: Color(0xFFDDDDDD),
                ),
              ),
                bottom: 0.0,
              ),
              notifications[index].isUnread ? Positioned(child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle
                    , color: Color(0xFF5DB3C1)
                ),
                width: 10,
                height: 10,

              ),
                top: ScreenUtils.getHeight(25),
                left: ScreenUtils.getWidth(10),

              ) : SizedBox(),
              Positioned(child: Text(
                notifications[index].notificationContent,
                style: notifications[index].isUnread?GoogleFonts.roboto(
                    fontSize: 15,
                    color: Color(0xFF202020),
                    fontWeight: FontWeight.w500
                ):GoogleFonts.roboto(
                    fontSize: 15,
                    color: Color(0xFF202020),
                    fontWeight: FontWeight.w400
                ),),
                top: ScreenUtils.getHeight(20),
                right: ScreenUtils.getWidth(20),
                left: ScreenUtils.getWidth(30),
              ),
              Positioned(child: Text(
                notifications[index].time.hour.toString() + ":" +
                    notifications[index].time.minute.toString(),
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Color(0xFF7D86A9),
                    fontWeight: FontWeight.w700
                ),),
                bottom: ScreenUtils.getHeight(10),
                right: ScreenUtils.getWidth(19),
              ),
            ],
          ),
        ),
      );
    });
  }
}
