library CurrentState;

import 'package:flutter/cupertino.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/view/chat/chat.dart';
import 'package:portal_owner/view/customers/customers.dart';
import 'package:portal_owner/view/dashboard/dashboard.dart';
import 'package:portal_owner/view/employees/employees.dart';
import 'package:portal_owner/view/inventory/brand_detail.dart';
import 'package:portal_owner/view/inventory/inventory.dart';
import 'package:portal_owner/view/inventory/product_detail.dart';
import 'package:portal_owner/view/orders/orders.dart';
import 'package:portal_owner/view/subscriptions/subscription.dart';
import 'package:portal_owner/view/support/support.dart';
import 'package:portal_owner/view/warehouse/warehouse.dart';

class CurrentState {
  static int selectedIndex = 0;
  static bool isNotificationsVisible = false;
  static var tabs = [
    ['Dashboard', 0, Images.dashboard],
    ['Subscription', 1, Images.user],
    ['Customers', 2, Images.user],
    ['Inventory', 3, Images.warehouse],
    ['Warehouses', 4, Images.order],
    ['Employees', 5, Images.dollar],
    ['Orders', 6, Images.attendance],
    ['Chat', 7, Images.chat],
    ['Support', 8, Images.support],
  ];

  static var screens = [
    Dashboard(),
    Subscription(),
    Customers(),
    Inventory(),
    Warehouse(),
    Employees(),
    Orders(),
    Chat(),
    Support(),
    ProductDetails(),
    BrandDetails(),
  ];

  static PageController pageController = PageController(initialPage: 0);

  static var warehouses = [
    [
      'Warehouse 1',
      'ABC<,XYZ Mathura',
      'Attendance Management, Warehouse Management, Order..',
    ],
    [
      'Warehouse 1',
      'ABC<,XYZ Mathura',
      'Attendance Management, Warehouse Management, Order..',
    ],
    [
      'Warehouse 1',
      'ABC<,XYZ Mathura',
      'Attendance Management, Warehouse Management, Order..',
    ],
    [
      'Warehouse 1',
      'ABC<,XYZ Mathura',
      'Attendance Management, Warehouse Management, Order..',
    ],
  ];
}
