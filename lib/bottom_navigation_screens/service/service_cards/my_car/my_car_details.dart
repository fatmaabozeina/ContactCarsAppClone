import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/main_text_field.dart';
import 'package:new_contact_car/common_files/main_drop_down.dart';
import 'package:new_contact_car/common_files/check_box.dart';
import 'package:new_contact_car/common_files/main_circle_button.dart';
import 'package:new_contact_car/common_files/bottom_navigation_bar.dart';

class MyCarDetails extends StatefulWidget {
  @override
  _MyCarDetailsState createState() => _MyCarDetailsState();
}

class _MyCarDetailsState extends State<MyCarDetails> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isVisible1 = false;
  bool isVisible2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'عرييتى',
            isMutual: false,
            icon: (Icon(Icons.arrow_forward_ios_rounded)),
          )),
      body: ListView(
        shrinkWrap: true,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Titles(
                    title: 'اضف عربيه',
                    textAlignment: TextAlign.right,
                    color: Colors.blue,
                    font: 20.0,
                  ),
                  Card(
                      // margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Titles(
                                title: 'الماركه',
                                font: 18.0,
                              ),
                              mainDropDown('الماركه'),
                              Titles(
                                title: 'الموديل',
                                font: 18.0,
                              ),
                              mainDropDown('الموديل'),
                              Titles(
                                title: 'السنه',
                                font: 18.0,
                              ),
                              mainDropDown('اختر السنه'),
                              Titles(
                                title: 'كيلوميترات',
                                font: 18.0,
                              ),
                              MainTextField(
                                hintLabel: '',
                                alignment: TextAlign.right,
                              ),
                              Titles(
                                title: 'ناقل الحركه',
                                font: 18.0,
                              ),
                              mainDropDown('اختر ناقل ناقل الحركه'),
                              Titles(
                                title: 'الفئه',
                                font: 18.0,
                              ),
                              mainDropDown('الفئه'),
                              myCarCheckBox(
                                  label: ' فكرنى بموعد تجديد الرخصه',
                                  boolean: isChecked1,
                                  visible: isVisible1),
                              Visibility(
                                visible: isVisible1,
                                child: Titles(
                                  title: 'تاريخ انتهاء الرخصه',
                                  font: 18.0,
                                ),
                              ),
                              Visibility(
                                visible: isVisible1,
                                child: MainTextField(
                                  hintLabel: '',
                                  alignment: TextAlign.right,
                                ),
                              ),
                              myCarCheckBox(
                                  label:
                                      'يوجد تامين لعربيه واريد تذكيرى قبل موعدالتجديد',
                                  boolean: isChecked2,
                                  visible: isVisible2),
                              Visibility(
                                visible: isVisible2,
                                child: Titles(
                                  title: 'شركه التأمين',
                                  font: 18.0,
                                ),
                              ),
                              Visibility(
                                  visible: isVisible2,
                                  child: mainDropDown('شركه التأمين')),
                              Visibility(
                                visible: isVisible2,
                                child: Titles(
                                  title: 'تاريخ انتهاء شركه التامين',
                                  font: 18.0,
                                ),
                              ),
                              Visibility(
                                visible: isVisible2,
                                child: MainTextField(
                                  hintLabel: '',
                                  alignment: TextAlign.right,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: MainCircleButton(
                                        label: 'الفاء',
                                        isOnlyText: true,
                                        withShape: true,
                                        fillColor: Colors.white,
                                        labelColor: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: MainCircleButton(
                                        label: 'حفظ',
                                        isOnlyText: true,
                                        withShape: true,
                                        fillColor: Color(0xFFEE7022),
                                        labelColor: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ]),
                      )),
                ],
              ),
            ),
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

  Row myCarCheckBox({String label, bool visible, bool boolean}) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Titles(
        title: label,
        font: 18.0,
      ),
      checkBox(boolean, (value) {
        setState(() {
          boolean = value;
          visible = false;
        });
      }, isCircleIcon: false)
    ]);
  }
}
