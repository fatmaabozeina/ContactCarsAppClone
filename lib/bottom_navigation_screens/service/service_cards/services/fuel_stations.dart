import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'backage/services_common_page.dart';
import 'backage/trial.dart';

class FuelStations extends StatefulWidget {
  @override
  _FuelStationsState createState() => _FuelStationsState();
}

class _FuelStationsState extends State<FuelStations> {
  IconData icon = Icons.keyboard_arrow_down;
  List<Widget> fuelStationsWidgets = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fuelStationsWidgets = buildListViewWidget(onTap: () {}, icon: icon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'محطات بنزين',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ServicesCommonBody(
        listOfWidgets: fuelStationsWidgets,
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
