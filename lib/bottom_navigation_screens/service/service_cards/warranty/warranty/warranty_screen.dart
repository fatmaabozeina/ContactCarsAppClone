import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'warranty_contact_card/warranty_contact_card.dart';
import 'warranty_program_card/warranty_programs_card.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';

class WarrantyScreen extends StatefulWidget {
  @override
  _WarrantyScreenState createState() => _WarrantyScreenState();
}

class _WarrantyScreenState extends State<WarrantyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'تامين',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ListView(children: [
        Expanded(
          child: Container(
            child: Image(image: AssetImage('images/warranty.jpeg')),
          ),
        ),
        WarrantyProgramsCard(),
        WarrantyContactCard(),
      ]),
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
