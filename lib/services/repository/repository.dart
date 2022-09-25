import 'package:get/get.dart';
import 'package:machine_test_neetable/core/constants/constants.dart';
import 'package:machine_test_neetable/services/apiclient/api_client.dart';

class UsersRepository extends GetxService {
  final ApiClient apiClient;

  UsersRepository({
    required this.apiClient,
  });

  Future<Response> getUsersData() async {
    return await apiClient.getData("");
  }
}
