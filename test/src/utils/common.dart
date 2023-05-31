import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

class TestHelper {
  static getJsonFromTestResources(String filename) {
    return jsonDecode(utf8.decode(File(filename).readAsBytesSync()));
  }

  static initSettings() {
    TestWidgetsFlutterBinding.ensureInitialized();
    //FontsHelper.loadFonts();
    //FontsHelper.loadMaterialIconFont();
  }
}
