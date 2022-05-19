import 'package:dio/dio.dart';

import '../../../domain/repository/datasource/datasource.dart';

class DatasourceImpl implements Datasource {
  DatasourceImpl(this.httpService);

  final Dio? httpService;

  @override
  get(Map<String, dynamic> param) {}

  @override
  post(Map<String, dynamic> param) {}
}
