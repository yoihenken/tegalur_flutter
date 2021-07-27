import 'package:dio/dio.dart';
import 'package:tegalur_flutter/services/BaseService.dart';

class MainRepo extends BaseService{

  Future<Response> getBerita()async{
    final _res = await request(endpoint: 'berita/1');
    print(_res.data);
    return _res;
  }

  Future<Response> getBeritaDetail()async{
    final _res = await request(endpoint: 'berita/detail/1/1');
    print(_res.data);
    return _res;
  }

  Future<Response> getPariwisata()async{
    final _res = await request(endpoint: 'pariwisata/');
    print(_res.data);
    return _res;
  }

  Future<Response> getEvent()async{
    final _res = await request(endpoint: 'event/1');
    print(_res.data);
    return _res;
  }

}