import 'dart:convert';
import 'dart:io';

class TestHelper {
  static getJsonFromTestResources(String filename) {
    return jsonDecode(utf8.decode(File(filename).readAsBytesSync()));
  }
}
