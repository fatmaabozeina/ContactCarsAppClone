import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/main_text_field.dart';
import 'package:new_contact_car/common_files/more_info_button.dart';
import 'company_prog_more_info.dart';

class CompanyInstallmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Titles(
                title: 'برامج الشركات المعتمده',
                font: 20.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              Titles(
                title:
                    'لو شغال فى شركه معتمده من كونتكت,تقدر تقسط باقل فايده ومقدم 10% ومميزات تانيه كتير.اعرف من هنا لو شركتك معتمده',
                font: 18.0,
              ),
              MainTextField(
                isAlignedLeft: false,
                alignment: TextAlign.right,
              ),
              MoreInfoButton(
                label: 'اعرف المزيدعن نظام الشركات!',
                buttonAction: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CompanyProgramMoreInfo();
                  }));
                },
              ),
            ],
          ),
        ));
  }
}
