import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  final String appBaseUrl;
  final int resultCount;

  ApiClient({required this.appBaseUrl, this.resultCount = 10}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
  }

  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
