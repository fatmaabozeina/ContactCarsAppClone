import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/backage/trial.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'backage/services_common_page.dart';

class RepairCenters extends StatefulWidget {
  @override
  _RepairCentersState createState() => _RepairCentersState();
}

class _RepairCentersState extends State<RepairCenters> {
  IconData icon = Icons.keyboard_arrow_down;
  List<Widget> repairCentersWidgets = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    repairCentersWidgets = buildListViewWidget(onTap: () {}, icon: icon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'مراكز اصلاح وخدمات',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ServicesCommonBody(
        listOfWidgets: repairCentersWidgets,
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
