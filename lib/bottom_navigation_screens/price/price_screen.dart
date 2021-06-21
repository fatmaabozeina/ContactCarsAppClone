import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'package:new_contact_car/common_files/main_circle_button.dart';
import 'price_calculation.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: PrimaryAppBar(
          appBarTitle: 'تسعير',
          isMutual: false,
          icon: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Image(image: AssetImage('images/carprice2.jpeg')),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Titles(
                    title: 'ماهى خدمه التسعير؟',
                    color: Colors.blue,
                    font: 20.0,
                  ),
                  Titles(
                    title:
                        ' دلوقت كونتكت كارز هتساعدك تعرف سعر عربيتك بخطوات بسيطه:\nاختر بيانات عربيتك.\nجاوب على اسئله بسيطه عن حاله العربيه.\nبعد ماتعرف سعر عربيتك, تقدر\n تكمل وتعمل اعلان باستخدام نفس البيانات',
                    font: 18.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 80, right: 80, top: 20, bottom: 20),
                    child: MainCircleButton(
                      withShape: true,
                      isOnlyText: true,
                      label: 'تسعير',
                      fillColor: Color(0xFFEE7022),
                      labelColor: Colors.white,
                      buttonAction: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PriceCalculation();
                        }));
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
