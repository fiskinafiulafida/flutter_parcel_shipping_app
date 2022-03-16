import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretest_minggu4/parcel_app_theme.dart';
import 'package:pretest_minggu4/ui/screens/home_screen.dart';
import 'package:pretest_minggu4/ui/screens/screen.dart';
import 'package:pretest_minggu4/ui/screens/send_parcel_detail_screen.dart';
import 'package:pretest_minggu4/ui/screens/send_parcel_screen.dart';
import 'package:pretest_minggu4/ui/widgets/my_bottom_navigation_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter',
      theme: ParcelAppTheme.lightTheme,
      home: const Scaffold(
        // body: SendParcelScreen(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
