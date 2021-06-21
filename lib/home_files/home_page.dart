import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_contact_car/ad_state.dart';
import '../common_files/titles.dart';
import '../common_files/app_bar.dart';
import '../common_files/secondary_buttons.dart';
import '../common_files/main_circle_button.dart';
import 'grid_card_data.dart';
import '../common_files/bottom_navigation_bar.dart';
import 'package:new_contact_car/request_data/request_data.dart';
import 'package:new_contact_car/main.dart';

class HomePage extends StatefulWidget {
  static const String id = 'my_home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color fillColor = Color(0xFF428E92);
  Color labelColor = Color(0xFFEDEDED);
  Color fillColor2 = Color(0xFFEDEDED);
  Color labelColor2 = Color(0xFF428E92);

  HomeViewModel m = HomeViewModel();
  List<Widget> n = [];

  @override
  void initState() {
    super.initState();
    print("in init state");
    buildGridWidgets((gridWidgets) {
      setState(() {
        print("grrrrr $gridWidgets");
        n = gridWidgets;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50), child: MainAppBar()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Stack(
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    color: Colors.red,
                    child: Image(
                      image: AssetImage('images/contactcar.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 50),
                  child: SearchButton(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 38,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Expanded(
                    child: MainCircleButton(
                      label: 'قديم',
                      isOnlyText: true,
                      fillColor: fillColor,
                      labelColor: labelColor,
                      buttonAction: () {
                        setState(() {
                          fillColor = fillColor2;
                          labelColor = labelColor2;
                          fillColor2 = labelColor2;
                          labelColor2 = fillColor;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: MainCircleButton(
                      label: 'جديد',
                      isOnlyText: true,
                      fillColor: fillColor2,
                      labelColor: labelColor2,
                      buttonAction: () {
                        setState(() {
                          fillColor = fillColor2;
                          labelColor = labelColor2;
                          fillColor2 = labelColor2;
                          labelColor2 = fillColor;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
                // shrinkWrap: true,
                padding: EdgeInsets.all(10),
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                scrollDirection: Axis.vertical,
                children: n),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
