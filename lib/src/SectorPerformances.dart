
import 'dart:async';

import 'package:flutter_alpha_vantage_package/src/BaseAPI.dart';
import 'package:flutter_alpha_vantage_package/src/JSONObject.dart';

class SectorPerformances extends BaseAPI {

  SectorPerformances(String key) : super(key);

  Future<JSONObject> getSectorPerformances() {
    return this.getRequest(function: "SECTOR");
  }
}