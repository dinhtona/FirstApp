import 'package:FirstApp/Models/MyPage.dart';
import 'package:flutter/material.dart';

final List<MyPage> listPage = [
  MyPage(0, Icon(Icons.home), "Trang chủ", "HOME", 0),
  MyPage(1, Icon(Icons.taxi_alert), "Kame", "Far", 0),
  MyPage(2, Icon(Icons.no_encryption), "", "", 0),
  MyPage(3, Icon(Icons.kitchen), "Pull", "Darkness", 0),
  MyPage(4, Icon(Icons.money_off), "Chese", "Killer", 0),
  // MyPage(5, Icon(Icons.access_alarms), "Hẹn giờ", "Clock")
];

final List<MyPage> listPageDrawer = [
  MyPage(5, Icon(Icons.change_history_rounded), "Thống kê", "Caculating", 1),
  MyPage(6, Icon(Icons.contact_phone), "Danh bạ", "Contacts", 1),
  MyPage(7, Icon(Icons.note), "Ghi chú", "Notes", 1),
  MyPage(8, Icon(Icons.event_note_sharp), "Sự kiện", "Events", 1),
  MyPage(9, Icon(Icons.money_off), "Chese", "Killer", 2),
  MyPage(10, Icon(Icons.face), "Tác giả", "Authors", 2),
  MyPage(
      11, Icon(Icons.supervised_user_circle), "Flutter Document", "Authors", 2),
  MyPage(10, Icon(Icons.face), "Báo lỗi cho tác giả", "Report Errors", 3),
  // MyPage(10, Icon(Icons.face), "Tác giả", "Authors")
];
