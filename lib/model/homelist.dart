// import 'package:FirstApp/design_course/home_design_course.dart';
// import 'package:FirstApp/fitness_app/fitness_app_home_screen.dart';
// import 'package:FirstApp/hotel_booking/hotel_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    // HomeList(
    //   imagePath: 'assets/hotel/hotel_booking.png',
    //   navigateScreen: HotelHomeScreen(),
    // ),
    // HomeList(
    //   imagePath: 'assets/images/fitness_app.png',
    //   navigateScreen: FitnessAppHomeScreen(),
    // ),
    // HomeList(
    //   imagePath: 'assets/design_course/design_course.png',
    //   navigateScreen: DesignCourseHomeScreen(),
    // ),
  ];
}
