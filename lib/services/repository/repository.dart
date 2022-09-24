import 'package:get/get.dart';
import 'package:machine_test_neetable/core/constants/constants.dart';
import 'package:machine_test_neetable/services/apiclient/api_client.dart';

class UsersRepository extends GetxService {
  final ApiClient apiClient;
  int? resultCount;

  UsersRepository({required this.apiClient, this.resultCount = 10});

  Future<Response> getUsersData() async {
    return await apiClient.getData("");
  }
}
