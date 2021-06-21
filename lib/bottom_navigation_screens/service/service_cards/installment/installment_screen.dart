import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';
import 'installment_program_card/installment_program.dart';
import 'installment_company_card/company_installment_Card.dart';
import 'installment_contact_card/installment_contact_card.dart';

class InstallmentScreen extends StatefulWidget {
  @override
  _InstallmentScreenState createState() => _InstallmentScreenState();
}

class _InstallmentScreenState extends State<InstallmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'تقسيط',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: ListView(children: [
        Expanded(
          child: Container(
            child: Image(image: AssetImage('images/installment.jpeg')),
          ),
        ),
        InstallmentProgramCard(),
        InstallmentContactCard(),
        CompanyInstallmentCard(),
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
