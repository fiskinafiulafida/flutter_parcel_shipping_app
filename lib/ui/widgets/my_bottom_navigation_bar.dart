import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pretest_minggu4/ui/screens/parcel_center_screen.dart';
import 'package:pretest_minggu4/ui/screens/screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // navbar icon
  List _screens = [HomeScreen(), ParcelCenterScreen(), SendParcelScreen()];

  @override
  Widget build(BuildContext context) {
    // hanya tampilan screens saja
    //   return BottomNavigationBar(
    //     selectedFontSize: 12,
    //     unselectedFontSize: 12,
    //     selectedLabelStyle: Theme.of(context).textTheme.headline5,
    //     unselectedLabelStyle: Theme.of(context).textTheme.headline5,
    //     items: <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //           icon: _selectedIndex == 0
    //               ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
    //               : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
    //           label: 'My parcels'),
    //       BottomNavigationBarItem(
    //           icon: _selectedIndex == 1
    //               ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
    //               : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
    //           label: 'Send parcel'),
    //       BottomNavigationBarItem(
    //           icon: _selectedIndex == 2
    //               ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
    //               : SvgPicture.asset('assets/images/icon_parcel_center_grey.svg'),
    //           label: 'Parcel center'),
    //     ],
    //     currentIndex: _selectedIndex,
    //     unselectedItemColor: Theme.of(context).unselectedWidgetColor,
    //     selectedItemColor: Colors.black,
    //     onTap: _onItemTapped,
    //   );
    // }

    // klik setiap icon untuk tampilan screens
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: Theme.of(context).textTheme.headline5,
        unselectedLabelStyle: Theme.of(context).textTheme.headline5,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == HomeScreen()
                  ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                  : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
              label: 'My parcels'),
          BottomNavigationBarItem(
              icon: _selectedIndex == SendParcelScreen()
                  ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
                  : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
              label: 'Send parcel'),
          BottomNavigationBarItem(
              icon: _selectedIndex == ParcelCenterScreen()
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset(
                      'assets/images/icon_parcel_center_grey.svg'),
              label: 'Parcel center'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Colors.black,
        // navbar
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
