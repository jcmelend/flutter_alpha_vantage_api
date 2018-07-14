import 'dart:async';
import 'package:flutter_alpha_vantage_package/src/BaseAPI.dart';
import 'package:flutter_alpha_vantage_package/src/JSONObject.dart';

class TimeSeries extends BaseAPI {

  var _intraday = "TIME_SERIES_INTRADAY";
  var _daily = "TIME_SERIES_DAILY";
  var _dailyAdjusted = "TIME_SERIES_DAILY_ADJUSTED";
  var _weekly = "TIME_SERIES_WEEKLY";
  var _weeklyAdjusted = "TIME_SERIES_WEEKLY_ADJUSTED";
  var _monthly = "TIME_SERIES_MONTHLY";
  var _monthlyAdjusted = "TIME_SERIES_MONTHLY_ADJUSTED";
  var _batchStockQuotes = "BATCH_STOCK_QUOTES";


  TimeSeries(String key) : super(key);

  Future<JSONObject> getIntraday(String symbol, {String interval = "1min", String outputsize})  async {
    return this.getRequest(function: _intraday, symbol: symbol, interval: interval, outputsize: outputsize);
  }

  Future<JSONObject> getDaily(String symbol, {String outputsize}) async {
    return this.getRequest(function: _daily, symbol: symbol, outputsize: outputsize);
  }

  Future<JSONObject> getDailyAdjusted(String symbol, {String outputsize}) async {
    return this.getRequest(function: _dailyAdjusted, symbol: symbol, outputsize: outputsize);
  }

  Future<JSONObject> getWeekly(String symbol, {String outputsize}) async {
    return this.getRequest(function: _weekly, symbol: symbol, outputsize: outputsize);
  }

  Future<JSONObject> getWeeklyAdjusted(String symbol, {String outputsize}) async {
    return this.getRequest(function: _weeklyAdjusted, symbol: symbol, outputsize: outputsize);
  }

  Future<JSONObject> getMonthly(String symbol, {String outputsize}) async {
    return this.getRequest(function: _monthly, symbol: symbol, outputsize: outputsize);
  }

  Future<JSONObject> getMonthlyAdjusted(String symbol, {String outputsize}) async {
    return this.getRequest(function: _monthlyAdjusted, symbol: symbol, outputsize: outputsize);
  }

  Future<JSONObject> getBatchStockQuotes(String symbols, {String outputsize}) async {
    return this.getRequest(function: _batchStockQuotes, symbols:  symbols, outputsize: outputsize);
  }
}