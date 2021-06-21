import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'backage/services_common_page.dart';
import 'backage/trial.dart';

class CarRent extends StatefulWidget {
  @override
  _CarRentState createState() => _CarRentState();
}

class _CarRentState extends State<CarRent> {
  IconData icon = Icons.keyboard_arrow_down;
  List<Widget> carsForRent = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carsForRent = buildListViewWidget(onTap: () {}, icon: icon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'تأجير سيارات',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ServicesCommonBody(
        listOfWidgets: carsForRent,
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
