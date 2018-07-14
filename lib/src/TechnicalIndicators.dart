import 'dart:async';

import 'package:flutter_alpha_vantage_package/src/BaseAPI.dart';
import 'package:flutter_alpha_vantage_package/src/JSONObject.dart';

class TechnicalIndicators extends BaseAPI {

  TechnicalIndicators(String key) : super(key);

  Future<JSONObject> getSMA(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "SMA", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }

  Future<JSONObject> getEMA(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "EMA", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }

  Future<JSONObject> getWMA(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "WMA", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }

  Future<JSONObject> getDEMA(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "DEMA", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }

  Future<JSONObject> getTEMA(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "TEMA", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }

  Future<JSONObject> getTRIMA(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "TRIMA", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }

  Future<JSONObject> getKAMA(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "KAMA", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }

  Future<JSONObject> getMAMA(String symbol, {String interval = "1min", String fastlimit, String slowlimit, String seriesType="open"}) {
    return this.getRequest(function: "EMA", symbol: symbol, interval: interval, seriesType: seriesType );
  }

  Future<JSONObject> getT3(String symbol, {String interval = "1min", String timePeriod = "60", String seriesType="open"}) {
    return this.getRequest(function: "T3", symbol: symbol, interval: interval, timePeriod: timePeriod, seriesType: seriesType );
  }
}