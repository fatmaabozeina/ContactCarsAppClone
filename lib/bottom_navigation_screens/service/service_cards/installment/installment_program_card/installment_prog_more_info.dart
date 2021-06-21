import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';

class InstallmentProgramsMoreInfo extends StatefulWidget {
  @override
  _InstallmentProgramsMoreInfoState createState() =>
      _InstallmentProgramsMoreInfoState();
}

class _InstallmentProgramsMoreInfoState
    extends State<InstallmentProgramsMoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'التقسيط',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
          )),
    );
  }
}
