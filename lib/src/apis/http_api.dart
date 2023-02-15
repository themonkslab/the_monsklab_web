import 'package:dio/dio.dart';
import 'package:the_monkslab_web/src/apis/_index.dart';

class HttpApi {
  HttpApi({Dio? httpClient}) : _httpClient = httpClient ?? Dio();

  final Dio _httpClient;

  Future<dynamic> getRequest(String requestUrl) async {
    try {
      var response = await _httpClient.get(requestUrl);
      return response.data;
    } catch (e) {
      throw RequestFailure();
    }
  }
}
