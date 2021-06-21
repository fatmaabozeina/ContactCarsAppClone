import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';
import 'package:new_contact_car/common_files/app_bar.dart';

import 'backage/trial.dart';
import 'backage/services_common_page.dart';

class RescueCranes extends StatefulWidget {
  @override
  _RescueCranesState createState() => _RescueCranesState();
}

class _RescueCranesState extends State<RescueCranes> {
  IconData icon = Icons.keyboard_arrow_down;
  List<Widget> rescueCraneWidgets = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rescueCraneWidgets = buildListViewWidget(
        icon: icon,
        onTap: () {
          print('fatma');
          setState(() {
            if (icon == Icons.keyboard_arrow_down) {
              icon = Icons.keyboard_arrow_up;
            } else if (icon == Icons.keyboard_arrow_up) {
              icon = Icons.keyboard_arrow_down;
            }
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'اوناش انقاذ',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ServicesCommonBody(listOfWidgets: rescueCraneWidgets),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
