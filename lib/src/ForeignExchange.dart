import 'dart:async';

import 'package:flutter_alpha_vantage_package/src/BaseAPI.dart';
import 'package:flutter_alpha_vantage_package/src/JSONObject.dart';

class ForeignExchange extends BaseAPI {

  ForeignExchange(String key) : super(key);


  Future<JSONObject> getCurrencyExchangeRate(String fromCurrency, String toCurrency) {
    return this.getRequest(function: "CURRENCY_EXCHANGE_RATE", fromCurrency: fromCurrency, toCurrency: toCurrency );

  }
}