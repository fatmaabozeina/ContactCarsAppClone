import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/more_info_button.dart';
import 'warranty_programs_more_info.dart';

class WarrantyProgramsCard extends StatelessWidget {
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
            children: [
              Titles(
                title: 'برامج التأمين',
                color: Colors.blue,
                font: 20.0,
                fontWeight: FontWeight.bold,
              ),
              Titles(
                title:
                    'برامج تامين شامل على السيارات تتيح الاصلاح لدى افضل مراكز الخدمه ويتم متابعه الاصلاح واتمام كافه الاجراءات ودفع فاتوره الاصلاح لمركز الخدمه مباشره بدون الحاجه لاى تدخل منك.وتقدر تتابع حاله عربيتك فى اى وقت من خلال الخط الساخن سبعه ايام فى الاسبوع.بالاضافه لخدمات وتغطيات اخرى مثل تامين على مفتاح العربيه تغطيه تامينيه للركاب ةاصلاح بدون معاينه وكمان نقل السياره فى حاله العطل والحوادث بدون تكلفه اضافيه.\nخدمات التامين مقدمه من خلال شركه كونتكت للوساطهالتامينيه(شركه خاضعه لهيئه الرقابه الماليه)',
                font: 18.0,
              ),
              MoreInfoButton(
                label: 'اعرف اكتر!',
                buttonAction: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WarrantyProgramsMoreInfo();
                  }));
                },
              ),
            ],
          ),
        ));
  }
}
