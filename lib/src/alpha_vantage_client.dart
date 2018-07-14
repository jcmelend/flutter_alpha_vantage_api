import 'dart:async';

import 'package:http/http.dart';

class AlphaVantageClient {

  /**
   * Stock Time Series Keys
   */
  String _baseURL = "www.alphavantage.co";
  final _FUNCTION = "function";
  final _SYMBOL = "symbol";
  final _SYMBOLS = "symbols";
  final _INTERVAL = "interval";
  final _OUTPUTSIZE = "outputsize";
  final _APIKEY = "apikey";

  /**
   * Foreign Exchange
   */

  final _FROM_CURRENCY = "from_currency";
  final _TO_CURRENTCY = "to_currency";

  /**
   * Digital/Crypto Currencies
   */

  final _MARKET = "market";

  /**
   * Technical Indicators
   */

  final _TIME_PERIOD = "time_period";
  final _SERIES_TYPE = "series_type";



  Client _client = new Client();
  static final AlphaVantageClient _alphaVantageClient = new AlphaVantageClient.internal();


  AlphaVantageClient.internal();

  factory AlphaVantageClient() {
    return _alphaVantageClient;
  }

  Future<Response> get({String function="TIME_SERIES_INTRADAY", String symbol, String symbols
                       ,String interval="1min", String outputsize, String apiKey
                       ,String fromCurrency, String toCurrency
                       ,String market, String timePeriod, String seriesType}) {

    Map<String, String> queryParams = _addQueryParams(function: function, symbol: symbol
                                      , symbols: symbols, interval: interval
                                      , outputsize: outputsize, apiKey: apiKey
                                      , fromCurrency: fromCurrency, toCurrency: toCurrency
                                      , market: market, timePeriod: timePeriod, seriesType: seriesType);

    Uri uriRequest = new Uri(scheme: "https", host: this._baseURL, path: "query",
        queryParameters: queryParams);
    String url = uriRequest.toString();
    print("Calling client with URL: " + url);
    Future<Response> response =  this._client.get(url);
    response.then((Response response) {
      print("Reponse from server: " + response.body.toString());
    });


    return response;
  }


  Map<String, String> _addQueryParams({String function="TIME_SERIES_INTRADAY", String symbol, String symbols
                                      , String interval="1min", String outputsize, String apiKey
                                      ,String fromCurrency, String toCurrency
                                      , String market, String timePeriod, String seriesType}) {
    Map<String, String> queryParams = new Map();
    _updateQueryMap(queryParams, this._FUNCTION, function);
    _updateQueryMap(queryParams, this._SYMBOL, symbol);
    _updateQueryMap(queryParams, this._INTERVAL, interval);
    _updateQueryMap(queryParams, this._OUTPUTSIZE, outputsize);
    _updateQueryMap(queryParams, this._APIKEY, apiKey);
    _updateQueryMap(queryParams, this._SYMBOLS, symbols);
    _updateQueryMap(queryParams, this._FROM_CURRENCY, fromCurrency);
    _updateQueryMap(queryParams, this._TO_CURRENTCY, toCurrency);
    _updateQueryMap(queryParams, this._MARKET, market);
    _updateQueryMap(queryParams, this._TIME_PERIOD, timePeriod);
    _updateQueryMap(queryParams, this._SERIES_TYPE, seriesType);
    return queryParams;
  }

  _updateQueryMap(Map<String, String> currentHeaders, String param, String paramValue) {
    if(paramValue != null) {
      currentHeaders[param] = paramValue;
    }
  }
}