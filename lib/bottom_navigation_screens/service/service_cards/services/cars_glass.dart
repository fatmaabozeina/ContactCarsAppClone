import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'backage/services_common_page.dart';
import 'backage/trial.dart';

class CarsGlass extends StatefulWidget {
  @override
  _CarsGlassState createState() => _CarsGlassState();
}

class _CarsGlassState extends State<CarsGlass> {
  IconData icon = Icons.keyboard_arrow_down;
  List<Widget> carsGlassWidgets = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carsGlassWidgets = buildListViewWidget(onTap: () {}, icon: icon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'زجاج سيارات',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ServicesCommonBody(
        listOfWidgets: carsGlassWidgets,
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
