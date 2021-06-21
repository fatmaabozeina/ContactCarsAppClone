import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'package:new_contact_car/common_files/check_box.dart';

class CardUIModel {
  String title;
  List labels = [];
}

List<CardUIModel> cards = [];
void buildCard({String title, List labels}) {
  CardUIModel cardModel = CardUIModel();
  cardModel.title = title;
  cardModel.labels = labels;
  cards.add(cardModel);
}

void getData() {
  buildCard(
      title: 'حاله العربيه من الخارج', labels: ['ممتازه', 'متوسط', 'ضعيف']);
  buildCard(
      title: 'حاله العربيه من الخارج', labels: ['ممتازه', 'متوسط', 'ضعيف']);
  buildCard(
      title: 'حاله العربيه من الخارج', labels: ['ممتازه', 'متوسط', 'ضعيف']);
  buildCard(
      title: 'حاله العربيه من الخارج', labels: ['ممتازه', 'متوسط', 'ضعيف']);
  buildCard(
      title: 'حاله العربيه من الخارج', labels: ['ممتازه', 'متوسط', 'ضعيف']);
  buildCard(
      title: 'حاله العربيه من الخارج', labels: ['ممتازه', 'متوسط', 'ضعيف']);
}

List<Widget> getCardWidget() {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  CardUIModel cardModel = CardUIModel();
  getData();
  List<Widget> cardWidgets = [];
  cards.forEach((element) {
    print('fatoma$element');
    cardWidgets.add(Column(
      children: [
        Titles(
          title: element.title,
        ),
        Container(
          color: isChecked1 == true ? Colors.green : Colors.black54,
          child: ListTile(
            trailing: checkBox(isChecked1, (value) {
              isChecked1 = value;
            }),
            title: Titles(
              title: element.labels[0],
            ),
          ),
        ),
        Container(
          color: isChecked2 == true ? Colors.green : Colors.black54,
          child: ListTile(
            trailing: checkBox(isChecked2, (value) {
              isChecked2 = value;
            }),
            title: Titles(
              title: element.labels[1],
            ),
          ),
        ),
        Container(
          color: isChecked3 == true ? Colors.green : Colors.black54,
          child: ListTile(
            trailing: checkBox(isChecked3, (value) {
              isChecked3 = value;
            }),
            title: Titles(
              title: element.labels[2],
            ),
          ),
        ),
      ],
    ));
  });
  return cardWidgets;
}
