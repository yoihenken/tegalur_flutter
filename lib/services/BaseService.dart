import 'package:dio/dio.dart';

class BaseService {
  Future<Response> request({String endpoint}) async {
    Dio _dio = Dio();
    Response _res;
    _dio.options.baseUrl = 'https://tegal-city.kaedenoki.net/';
    try {
      _res = await _dio.get(endpoint);
    } on DioError catch (e) {
      print(e);
    }
    return _res;
  }
}
