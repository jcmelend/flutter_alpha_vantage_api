import 'dart:convert';


class JSONObject {

  Map<String, dynamic> jsonContents;

  JSONObject(String jsonString) {
    this.jsonContents = json.decode(jsonString);
  }

  dynamic _get(String key, Map<String, dynamic> json) {

    if(json.containsKey(key)) {
      return json[key];
    }else {
      Iterable<dynamic> values = json.values;
      for(dynamic jsonValue in values) {
        try {
          return _get(key, jsonValue);
        } catch(e) {}
      }
    }

    return null;
  }

  dynamic get(String key) {
    return _get(key, this.jsonContents);
  }

  String getString(String key) {
    return  _get(key, this.jsonContents);
  }

  Map<String, dynamic> getJSONMap() {
    return this.jsonContents;
  }

}