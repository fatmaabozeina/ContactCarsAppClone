import 'package:flutter/material.dart';
import 'titles.dart';
import '../home_files/Search_Screen.dart';

class SecondaryButton extends StatelessWidget {
  Widget titles;
  Function iconAction;
  SecondaryButton({this.titles, this.iconAction});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        onPressed: iconAction,
        icon: Icon(Icons.arrow_left, color: Color(0xFFEE7022)),
        label: titles);
  }
}

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: OutlinedButton.icon(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFFFBB38)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            alignment: Alignment.centerLeft),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SearchScreen();
          }));
        },
        icon: Icon(Icons.search),
        label: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Titles(
              title: 'بحث مفصل',
              font: 20.0,
            )),
      ),
    );
  }
}
