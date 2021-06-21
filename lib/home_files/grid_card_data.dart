import 'package:flutter/material.dart';
import 'package:new_contact_car/request_data/data_model.dart';
import 'package:new_contact_car/request_data/request_data.dart';
import 'package:transparent_image/transparent_image.dart';
import '../common_files/titles.dart';

class HomeViewModel {
  static const carUrl =
      'https://private-anon-52834fbb96-carsapi1.apiary-mock.com/manufacturers';
  RequestData requestData = RequestData(carUrl);
  List<Result> carBrandListData = [];

  void getCarBrands(void carBrands(List<Result> results)) {
    requestData.getData().then((value) {
      carBrandListData = value;
      carBrands(value);
      print('fatma$value');
    });
  }
}
//
// class CarCompanyInfo {
//   String brandName;
//   IconData brandIcon;
// }

//
// List<CarCompanyInfo> carCards = [];
//
// void buildCarCard(String brand, IconData brandIcon) {
//   CarCompanyInfo gridCards = CarCompanyInfo();
//   gridCards.brandName = brand;
//   gridCards.brandIcon = brandIcon;
//   carCards.add(gridCards);
//   print(carCards);
// }

// void buildGridCards() {
//   buildCarCard('أودى', Icons.icecream);
//   buildCarCard('اوبل', Icons.ac_unit);
//   buildCarCard('أم جى', Icons.icecream);
//   buildCarCard('بروتون', Icons.ac_unit);
//   buildCarCard('ألفا روميو', Icons.icecream);
//   buildCarCard('استون مارتن', Icons.ac_unit);
//   buildCarCard('بى ام دابليو', Icons.icecream);
//   buildCarCard('بورش', Icons.ac_unit);
//   buildCarCard('بريلنس', Icons.ac_unit);
//   buildCarCard('بريلنس', Icons.ac_unit);
//   buildCarCard('تويوتا', Icons.ac_unit);
//   buildCarCard('بيجو', Icons.ac_unit);
//   buildCarCard('بى واى دى', Icons.ac_unit);
//   buildCarCard('جيب', Icons.ac_unit);
//   buildCarCard('جاك', Icons.ac_unit);
//   buildCarCard('جاجوار', Icons.ac_unit);
//   buildCarCard('رينو', Icons.ac_unit);
//   buildCarCard('رانج روفر', Icons.ac_unit);
//   buildCarCard('دى اس', Icons.ac_unit);
//   buildCarCard('سكودا', Icons.ac_unit);
//   buildCarCard('ستروين', Icons.ac_unit);
//   buildCarCard('سانج يونج', Icons.ac_unit);
//   buildCarCard('سيات', Icons.ac_unit);
//   buildCarCard('سوزوكى', Icons.ac_unit);
//   buildCarCard('سوبارو', Icons.ac_unit);
//   buildCarCard('شيفورليه', Icons.ac_unit);
//   buildCarCard('شيرى', Icons.ac_unit);
//   buildCarCard('شانجان', Icons.ac_unit);
//   buildCarCard('فولكس فاجن', Icons.ac_unit);
//   buildCarCard('فولفو', Icons.ac_unit);
//   buildCarCard('فورد', Icons.ac_unit);
//   buildCarCard('كيا', Icons.ac_unit);
//   buildCarCard('كرايسلر', Icons.ac_unit);
//   buildCarCard('فيات', Icons.ac_unit);
//   buildCarCard('لكزس', Icons.ac_unit);
//   buildCarCard('لاند روفر', Icons.ac_unit);
//   buildCarCard('لادا', Icons.ac_unit);
//   buildCarCard('مرسيدس', Icons.ac_unit);
//   buildCarCard('مازيراتى', Icons.ac_unit);
//   buildCarCard('مازدا', Icons.ac_unit);
//   buildCarCard('نيسان', Icons.ac_unit);
//   buildCarCard('مينى', Icons.ac_unit);
//   buildCarCard('ميتسويتشى', Icons.ac_unit);
// }

List<Widget> buildGridWidgets(void gridWidgetsOutput(List<Widget> widgets)) {
  HomeViewModel homeModel = HomeViewModel();
  List<Widget> gridWidgets = [];
  homeModel.getCarBrands((results) {
    results.forEach((element) {
      print("element $element");
      gridWidgets.add(
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFEDEDED),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: NetworkImage(element.imgUrl)),
              Titles(
                title: element.name,
                font: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      );
    });
    print("gridaaaa $gridWidgets");
    gridWidgetsOutput(gridWidgets);
    // return gridWidgets;
  });
  print("feasal grid widgets");

  return gridWidgets;
}
