import 'package:dio/dio.dart';

final dio = Dio()
  ..options = BaseOptions(
    connectTimeout: const Duration(seconds: 10)
  )
  ..interceptors.add(LogInterceptor());