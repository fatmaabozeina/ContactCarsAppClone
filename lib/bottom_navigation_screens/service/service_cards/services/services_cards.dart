import 'package:flutter/material.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/batteries.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/car_rent_limosine.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/cars_glass.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/fuel_stations.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/repair_services_centers.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/rescue_cranes.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/spare_parts.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/tires.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/grid_card.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'الخدمات',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ServiceGridCard(
            label: 'اوناش انقاذ',
            image: ('images/saving.jpeg'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RescueCranes();
              }));
            },
          ),
          ServiceGridCard(
            label: 'اطارات',
            image: ('images/tire.jpeg'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Tires();
              }));
            },
          ),
          ServiceGridCard(
            label: 'زجاج سيارات',
            image: ('images/carglass.jpeg'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CarsGlass();
              }));
            },
          ),
          ServiceGridCard(
            label: 'بطاريات',
            image: ('images/fuel2.png'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Batteries();
              }));
            },
          ),
          ServiceGridCard(
            label: 'قطع غياروكماليات',
            image: ('images/parts.jpeg'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SpareParts();
              }));
            },
          ),
          ServiceGridCard(
            label: 'تاجيروليموزين',
            image: ('images/carrent.jpeg'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CarRent();
              }));
            },
          ),
          ServiceGridCard(
            label: 'محطات بنزين',
            image: ('images/fuel.jpeg'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FuelStations();
              }));
            },
          ),
          ServiceGridCard(
            label: 'مراكز اصلاح وخدمات',
            image: ('images/service.jpeg'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RepairCenters();
              }));
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 5,
          shape: CircularNotchedRectangle(),
          color: Colors.blue,
          child: navigationBar(context)),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
