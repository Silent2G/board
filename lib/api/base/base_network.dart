import 'package:board_pro/api/api_client.dart';
import 'package:dio/dio.dart' hide Headers;


class BaseNetwork {
  Dio dio;
  ApiClient apiClient;

  BaseNetwork() {
    dio = new Dio();
    apiClient = new ApiClient(dio);
  }
}
