import 'package:flutter/cupertino.dart';

class Notifications {
  DateTime time;
  String notificationContent;
  bool isUnread;

  Notifications(
      {@required this.time,
      @required this.notificationContent,
      @required this.isUnread});
}
