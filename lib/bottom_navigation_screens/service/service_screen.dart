import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'grid_card.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/installment/installment_screen.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/services/services_cards.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/warranty/warranty/warranty_screen.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/my_car/add_my_car.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';

class ServiceScreen extends StatefulWidget {
  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'الخدمات',
            isMutual: true,
            opacity: 0.0,
          )),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          ServiceGridCard(
            label: 'تامين',
            image: 'images/warranty.jpeg',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WarrantyScreen();
              }));
            },
          ),
          ServiceGridCard(
            label: 'قسط',
            image: 'images/calculator_installment.png',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InstallmentScreen();
              }));
            },
          ),
          ServiceGridCard(
            label: 'الخدمات',
            image: 'images/service.jpeg',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Services();
              }));
            },
          ),
          ServiceGridCard(
            label: 'عربيتى',
            image: 'images/car.png',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyCarService();
              }));
            },
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
