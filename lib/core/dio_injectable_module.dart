import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectableModule {
  @lazySingleton
  Dio get client => Dio();
}
