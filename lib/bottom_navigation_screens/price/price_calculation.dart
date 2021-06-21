import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/main_drop_down.dart';
import 'package:new_contact_car/common_files/main_text_field.dart';
import 'package:new_contact_car/common_files/check_box.dart';
import 'cardData.dart';

class PriceCalculation extends StatefulWidget {
  @override
  _PriceCalculationState createState() => _PriceCalculationState();
}

class _PriceCalculationState extends State<PriceCalculation> {
  bool isChecked = false;
  List<Widget> priceWidgets = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    priceWidgets = getCardWidget();
    print('tamtam');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'تقيم العربيه',
            isMutual: true,
            opacity: 1.0,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Titles(
                      title: 'معلومات العربيه',
                      textAlignment: TextAlign.right,
                      color: Colors.blue,
                      font: 20.0,
                    ),
                    Card(
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
                                  title: 'الفئه',
                                  font: 18.0,
                                ),
                                mainDropDown('الفئه'),
                                Titles(
                                  title: 'ناقل الحركه',
                                  font: 18.0,
                                ),
                                mainDropDown('اختر ناقل الحركه'),
                                Titles(
                                  title: 'النمط',
                                  font: 18.0,
                                ),
                                mainDropDown('النمط'),
                                Titles(
                                  title: 'اللون',
                                  font: 18.0,
                                ),
                                mainDropDown('اللون'),
                                Titles(
                                  title: 'كيلوميترات',
                                  font: 18.0,
                                ),
                                MainTextField(
                                  hintLabel: 'ادخل عدد الكيلومترات',
                                  alignment: TextAlign.right,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Titles(
                                        title: 'مثبت السرعه',
                                        font: 18.0,
                                      ),
                                      checkBox(isChecked, (value) {
                                        setState(() {
                                          isChecked = value;
                                        });
                                      }, isCircleIcon: false)
                                    ])
                              ]),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 10),
                      child: Titles(
                        title: 'بيانات عن حاله العربيه',
                        font: 20.0,
                        color: Colors.blue,
                        isRightAlign: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Titles(
                          title: 'حاله العربيه من الخارج',
                          font: 20.0,
                          color: Colors.blue,
                          isRightAlign: false,
                          textAlignment: TextAlign.center),
                    ),
                    ListView.builder(
                      itemCount: priceWidgets.length,
                      itemBuilder: (context, index) {
                        return priceWidgets.elementAt(index);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
