
import 'dart:async';
import 'dart:convert';

import 'package:flutter_alpha_vantage_package/src/alpha_vantage_client.dart';
import 'package:http/http.dart';
import 'package:flutter_alpha_vantage_package/src/JSONObject.dart';

class BaseAPI {

  var client = AlphaVantageClient.internal();

  String _apiKey;
  Map<String, String> queryParams;

  BaseAPI(String key) {
    this._apiKey = key;
    this.queryParams = new Map();
  }

  String getAPIKey() {
    return this._apiKey;
  }

  Future<JSONObject> getRequest({String function, String symbol
                                          , String interval, String outputsize
                                          , String symbols, String fromCurrency
                                          , String toCurrency, String market
                                          , String timePeriod, String seriesType}) async {

    Response response = await this.client.get(function: function, symbol: symbol
                                              , symbols: symbols, interval: interval
                                              , outputsize: outputsize, apiKey: this.getAPIKey()
                                              , fromCurrency: fromCurrency, toCurrency: toCurrency
                                              , market: market, timePeriod: timePeriod, seriesType: seriesType);

    _validateResponse(response);
    return JSONObject(response.body);
  }


  void _validateResponse(Response response) {
    if(response.statusCode != 200) {
      throw Exception("Failed to get data from alpha vantage server. Response from server:" + response.body.toString());
    }
  }

  Map<String, dynamic> toJson(Response response) {

    if(response.statusCode == 200) {
      print(response.body);
      return json.decode(response.body);
    }else {

      throw Exception("Failed to get data from alpha vantage server. Response from server:" + response.body.toString());
    }
  }
}
