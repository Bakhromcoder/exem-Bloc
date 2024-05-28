
import 'dart:convert';

import 'package:http/http.dart';

import '../models/info_model.dart';

class Network {
  static String BASE = "newsapi.org";
  static Map<String, String> headers = {'Content-Type': 'application/json; charset=UTF-8'};

  /* Http Apis */
  static String API_INFO_LIST = "/v2/everything";

  /* Http Requests */
  static Future<String?> GET(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api, params);
    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }


  /* Http Params */


  static Map<String, String> paramsINFO() {
    Map<String, String> params = {};
    params.addAll({
      'q': 'bitcoin',
      'apiKey': '698661810fe74f3192675b50cd5e01c0'
    });
    return params;
  }

  /* Http Parsing */

  static ArticlesList parseInfo(String response){
    dynamic json = jsonDecode(response);
    return ArticlesList.fromJson(json);
  }
}