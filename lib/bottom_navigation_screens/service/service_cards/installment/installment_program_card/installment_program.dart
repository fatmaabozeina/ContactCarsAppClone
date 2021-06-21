import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/more_info_button.dart';
import 'installment_prog_more_info.dart';

class InstallmentProgramCard extends StatelessWidget {
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
                title: 'برامج التقسيط',
                color: Colors.blue,
                font: 20.0,
                fontWeight: FontWeight.bold,
              ),
              Titles(
                title:
                    'لو عاوز تشتشرى عربيه جديده او مستعمله,كونتكت بتقدملك برامج تقسيط متنوعه تناسب احتياجاتك المختلفه سواء كنت بتدور على مقدم اققل,او عايز تاجل جزء من ثمن العربيه وتسدده كدفعه واحده فى نهايه التقسيط.كونتكت كارز كمان بتوفرلك برامج للشركات لو شغال فى احدى الشركات المعتمده,تقدر تحصل على مميزات اكتر للتقسيط.',
                font: 18.0,
              ),
              Titles(
                title:
                    'برامج التقسيط مقدمه من شركه كونتكت للتمويل(شركه خاضعه للهيئه العامه للرقابه الماليه).',
                font: 20.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              MoreInfoButton(
                label: 'اعرف اكتر!',
                buttonAction: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InstallmentProgramsMoreInfo();
                  }));
                },
              ),
            ],
          ),
        ));
  }
}
