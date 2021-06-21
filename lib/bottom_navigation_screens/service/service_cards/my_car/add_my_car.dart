import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/app_bar.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/bottom_navigation_screens/service/service_cards/my_car/my_car_details.dart';

class MyCarService extends StatefulWidget {
  @override
  _MyCarServiceState createState() => _MyCarServiceState();
}

class _MyCarServiceState extends State<MyCarService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: PrimaryAppBar(
            appBarTitle: 'عربيتى',
            isMutual: false,
            icon: Icon(Icons.arrow_forward_ios_rounded),
            opacity: 1.0,
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyCarDetails();
                }));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Titles(
                    title: 'اضف عربيه',
                    font: 20.0,
                    color: Color(0xFFEE7022),
                  ),
                  Icon(
                    Icons.car_repair,
                    color: Color(0xFFEE7022),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image(
                image: AssetImage('images/carprice2.jpeg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
