import 'package:http/http.dart' as http;
import 'dart:convert';
import 'data_model.dart';

class RequestData {
  final url;
  RequestData(this.url);
  Future<List<Result>> getData() async {
    //void success (MoviesRootModel movies)
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      print('wow');
      var data = response.body;
      Iterable l = json.decode(response.body);
      List<Result> carBrands =
          List<Result>.from(l.map((model) => Result.fromJson(model)));
      // print("list converted successfully $carBrands ");
      return carBrands;
    } else {
      print(response.statusCode);
    }
  }
}
