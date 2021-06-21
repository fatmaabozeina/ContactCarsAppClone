import 'package:flutter/material.dart';
import '../common_files/app_bar.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/check_box.dart';
import 'package:new_contact_car/common_files/main_drop_down.dart';
import 'package:new_contact_car/common_files/main_text_field.dart';
import 'package:new_contact_car/common_files/main_circle_button.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool checked = false;
  bool newChecked = false;
  bool installChecked = false;
  bool cashChecked = false;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: PrimaryAppBar(
            appBarTitle: "بحث مفصل",
            isMutual: true,
            opacity: 1.0,
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Titles(
                              title: 'ابحث فى',
                              fontWeight: FontWeight.bold,
                              font: 20.0,
                              color: Colors.black),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Titles(
                                      title: 'مستعمل',
                                      font: 18.0,
                                    ),
                                    checkBox(checked, (value) {
                                      setState(() {
                                        checked = value;
                                        newChecked = false;
                                        isVisible = true;
                                      });
                                    })
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Titles(
                                      title: 'جديد',
                                      font: 18.0,
                                    ),
                                    checkBox(newChecked, (value) {
                                      setState(() {
                                        newChecked = value;
                                        checked = false;
                                        isVisible = false;
                                      });
                                    })
                                  ],
                                ),
                              )
                            ],
                          ),
                          Titles(
                            title: 'الماركه',
                            font: 18.0,
                          ),
                          mainDropDown(''),
                          Titles(
                            title: 'الموديل',
                            font: 18.0,
                          ),
                          mainDropDown(''),
                          Titles(
                            title: 'النمط',
                            font: 18.0,
                          ),
                          mainDropDown('النمط'),
                          Visibility(
                            visible: isVisible,
                            child: Titles(
                              title: 'كيلومترات',
                              font: 18.0,
                            ),
                          ),
                          Visibility(
                            visible: isVisible,
                            child: MainTextField(
                              hintLabel: 'اقصى كيلومترات',
                              isAlignedLeft: false,
                              alignment: TextAlign.right,
                            ),
                          ),
                          Titles(title: 'طريقه الدفع'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 100),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Titles(
                                        title: 'مستعمل',
                                        font: 18.0,
                                      ),
                                      checkBox(cashChecked, (value) {
                                        setState(() {
                                          cashChecked = value;
                                          installChecked = false;
                                        });
                                      })
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Titles(
                                      title: 'جديد',
                                      font: 18.0,
                                    ),
                                    checkBox(installChecked, (value) {
                                      setState(() {
                                        installChecked = value;
                                        cashChecked = false;
                                      });
                                    })
                                  ],
                                ),
                              )
                            ],
                          ),
                          Titles(
                            title: 'السعر',
                            font: 18.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: MainTextField(
                                  hintLabel: 'الى',
                                  isAlignedLeft: false,
                                  alignment: TextAlign.right,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: MainTextField(
                                  hintLabel: 'من',
                                  isAlignedLeft: false,
                                  alignment: TextAlign.right,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              MainCircleButton(
                label: 'بحث',
                fillColor: Color(0xFFEE7022),
                labelColor: Colors.white,
                withShape: true,
                isOnlyText: true,
                buttonAction: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
