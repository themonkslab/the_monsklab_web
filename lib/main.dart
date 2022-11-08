import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:the_monkslab_web/src/app.dart';

void main() async {
  runApp(
    App(),
  );
}

void getHttp() async {
  try {
    var response = await Dio().get(
        'https://raw.githubusercontent.com/themonkslab/courses/main/cursos.json');
    print(response);
  } catch (e) {
    print(e);
  }
}
