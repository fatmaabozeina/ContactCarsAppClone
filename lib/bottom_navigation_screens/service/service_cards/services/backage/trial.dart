import 'package:flutter/material.dart';
import 'services_list_view_card.dart';

class CardModel {
  String title;
  String subTitle;
  String image;
  Icon titleIcon;
  Icon subTitleIcon;
}

class MyBackEnd {
  var title;
  var subTitle;
  var image;
  Icon titleIcon;
  Icon subTitleIcon;
  MyBackEnd(
      {this.title,
      this.subTitle,
      this.subTitleIcon,
      this.image,
      this.titleIcon});
}

List<CardModel> myCards = [];
void buildMyCard(MyBackEnd myBackEnd) {
  CardModel model = CardModel();
  model.title = myBackEnd.title;
  model.subTitle = myBackEnd.subTitle;
  model.image = myBackEnd.image;
  model.titleIcon = myBackEnd.titleIcon;
  model.subTitleIcon = myBackEnd.subTitleIcon;
  myCards.add(model);
}

void fillCardData() {
  MyBackEnd myBackEnd = MyBackEnd(
      title: 'مؤسسه الصعيدى لانقاذ السيارات',
      subTitle: "الكيلو 110 طريق الاسكندريه",
      titleIcon: Icon(Icons.location_on_outlined),
      image: "images/contactus.png",
      subTitleIcon: Icon(Icons.local_gas_station));
  buildMyCard(myBackEnd);
  buildMyCard(myBackEnd);
  buildMyCard(myBackEnd);
  buildMyCard(myBackEnd);
  buildMyCard(myBackEnd);
  buildMyCard(myBackEnd);
}

List<Widget> buildListViewWidget({Function onTap, IconData icon}) {
  fillCardData();
  List<Widget> gridWidgets = [];
  myCards.forEach((element) {
    gridWidgets.add(ServicesListViewCardModel(
      title: element.title,
      subTitle: element.subTitle,
      image: element.image,
      icon: icon,
      onPressed: onTap,
    ));
  });
  return gridWidgets;
}
