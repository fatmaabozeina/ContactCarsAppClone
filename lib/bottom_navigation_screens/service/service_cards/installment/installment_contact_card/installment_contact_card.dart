import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/main_text_field.dart';
import 'package:new_contact_car/common_files/main_circle_button.dart';

class InstallmentContactCard extends StatelessWidget {
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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Titles(
                        title: 'اعرف اكتر عن برامج التقسيط المختلفه!',
                        font: 20.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Image(image: AssetImage('images/envelop.jpeg')),
                    ),
                  ),
                ],
              ),
              Titles(
                title: 'الاسم',
                font: 18.0,
              ),
              MainTextField(
                isAlignedLeft: false,
                alignment: TextAlign.right,
              ),
              Titles(
                title: 'رقم التلفون',
                font: 18.0,
              ),
              MainTextField(
                isAlignedLeft: false,
                alignment: TextAlign.right,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: MainCircleButton(
                  label: 'تواصل معنا',
                  isOnlyText: true,
                  labelColor: Colors.white,
                  fillColor: Color(0xFFEE7022),
                  withShape: true,
                  buttonAction: () {},
                ),
              )
            ],
          ),
        ));
  }
}
