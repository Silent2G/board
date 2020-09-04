import 'package:dio/dio.dart' hide Headers;

import 'package:retrofit/retrofit.dart';

// part 'api_client.g.dart';

@RestApi(baseUrl: "http://some url")
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(receiveTimeout: 15000, connectTimeout: 15000);
    dio.options.headers["Content-Type"] = "application/json";
    // return _ApiClient(dio);
  }

}
