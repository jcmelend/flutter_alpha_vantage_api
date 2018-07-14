# flutter_alpha_vantage_package

A new Flutter package for using alpha vantage api.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).

## Usage

Add the following import statement where you need to use this package libraries:
import 'package:flutter_alpha_vantage_package/flutter_alpha_vantage_package.dart';

There are four libraries to use to call Alpha Vantage rest api:
TimeSeries.dart, SectorPerformances.dart, ForeignExchange.dart, CryptoCurrencies.dart,
and TechnicalIndicators.dart.

Example:

```Dart
import 'package:flutter_alpha_vantage_package/flutter_alpha_vantage_package.dart';
import 'package:test/test.dart';

void main() async {


  test('Intraday', () async {
    final timeSeries = new TimeSeries("YourAlphaVantageAPIKey");
    JSONObject json = await timeSeries.getIntraday("MSFT");

    // Use get method to search entire json for key for stock
    expect(json.get("2. Symbol"), "MSFT");

    // Use map to find stock symbol
    expect(json.getJSONMap()["Meta Data"]["2. Symbol"], "MSFT");
    print(json.getJSONMap());
  });

  test('Intraday', () async {
    final technicalIndicator = new TechnicalIndicators("YourAlphaVantageAPIKey");
    JSONObject json = await technicalIndicator.getSMA("MSFT");

    // Use get method to search entire json for key for stock
    expect(json.get("1: Symbol"), "MSFT");

    // Use map to find stock symbol
    expect(json.getJSONMap()["Meta Data"]["1: Symbol"], "MSFT");
    print(json.getJSONMap());
  });
}
```

