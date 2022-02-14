import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:live_score_bola/api_model/basket_model.dart';

class BasketAPI {
  //API-Url from https://www.api-basketball.com/

  //header
  static const header = {
    'x-rapidapi-host': "api-basketball.p.rapidapi.com",
    'x-rapidapi-key': "bf36a9e47cmshd86bb5684faa423p111770jsn8e230cc34065"
  };

  Future<List<BasketMatch>> getAllMatches() async {
    final res = await http.get(
        Uri.parse(
            "https://api-basketball.p.rapidapi.com/games?league=12&season=2019-2020"),
        headers: header);
    var body;
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print('API Service: \n ${body}'); //debug check
      List<BasketMatch> matches = matchesList
          .map((dynamic item) => BasketMatch.fromJson(item))
          .toList();
    }
  }
}
