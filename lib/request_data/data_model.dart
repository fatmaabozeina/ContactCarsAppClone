// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.result,
  });

  List<Result> result;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.numModels,
    this.imgUrl,
    this.maxCarId,
    this.id,
    this.name,
    this.avgHorsepower,
    this.avgPrice,
  });

  int numModels;
  String imgUrl;
  int maxCarId;
  int id;
  String name;
  double avgHorsepower;
  double avgPrice;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        numModels: json["num_models"],
        imgUrl: json["img_url"],
        maxCarId: json["max_car_id"],
        id: json["id"],
        name: json["name"],
        avgHorsepower: json["avg_horsepower"].toDouble(),
        avgPrice: json["avg_price"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "num_models": numModels,
        "img_url": imgUrl,
        "max_car_id": maxCarId,
        "id": id,
        "name": name,
        "avg_horsepower": avgHorsepower,
        "avg_price": avgPrice,
      };
}
