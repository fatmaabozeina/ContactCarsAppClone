import 'package:flutter/material.dart';
import '../bottom_navigation_screens/more_info_screen.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_screen.dart';
import '../bottom_navigation_screens/price/price_screen.dart';
import 'package:new_contact_car/home_files/home_page.dart';

BottomNavigationBar navigationBar(BuildContext context) {
  int currentIndex = 0;
  return BottomNavigationBar(
    selectedItemColor: Colors.white,
    unselectedItemColor: Color(0xFFC6C8B6),
    elevation: 0,
    backgroundColor: Colors.transparent,
    currentIndex: currentIndex,
    type: BottomNavigationBarType.fixed,
    items: <BottomNavigationBarItem>[
      bottomNavigationBar(label: 'المزيد', icon: Icons.more_horiz_rounded),
      bottomNavigationBar(label: 'الخدمات', icon: Icons.location_off_outlined),
      bottomNavigationBar(label: 'تسعير', icon: Icons.speed_rounded),
      bottomNavigationBar(label: 'البحث', icon: Icons.search)
    ],
    onTap: (index) {
      // setState(() {

      currentIndex = index;
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MoreInfo();
              },
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ServiceScreen();
              },
            ),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PriceScreen();
              },
            ),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ),
          );
          break;
      }
    },
  );
  // },
  // );
}

BottomNavigationBarItem bottomNavigationBar({String label, IconData icon}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
        child: navigationBar(context));
  }
}

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      backgroundColor: Colors.orange,
    );
  }
}
