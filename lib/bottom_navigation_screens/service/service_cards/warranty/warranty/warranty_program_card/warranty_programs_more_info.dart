import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';

class WarrantyProgramsMoreInfo extends StatefulWidget {
  @override
  _WarrantyProgramsMoreInfoState createState() =>
      _WarrantyProgramsMoreInfoState();
}

class _WarrantyProgramsMoreInfoState extends State<WarrantyProgramsMoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'برامج التامين',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
    );
  }
}
