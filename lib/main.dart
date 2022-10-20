import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/app.dart';

void main() async {
  // getHttp();
  runApp(
    const App(),
  );
}

// void getHttp() async {
//   try {
//     var response = await Dio().get(
//         'https://raw.githubusercontent.com/themonkslab/the_monsklab_web/main/README.md');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }
