import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';
import 'backage/services_common_page.dart';
import 'backage/trial.dart';

class Batteries extends StatefulWidget {
  @override
  _BatteriesState createState() => _BatteriesState();
}

class _BatteriesState extends State<Batteries> {
  IconData icon = Icons.keyboard_arrow_down;
  List<Widget> batteriesWidgets = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    batteriesWidgets = buildListViewWidget(onTap: () {}, icon: icon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'بطاريات',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ServicesCommonBody(
        listOfWidgets: batteriesWidgets,
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
