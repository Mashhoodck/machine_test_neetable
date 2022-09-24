import 'package:get/get.dart';
import 'package:machine_test_neetable/controller/user_list_controller.dart';
import 'package:machine_test_neetable/core/constants/constants.dart';
import 'package:machine_test_neetable/services/apiclient/api_client.dart';
import 'package:machine_test_neetable/services/repository/repository.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: '${kBaseUrl}' '?results=${10}'));

  Get.lazyPut(() => UsersRepository(apiClient: Get.find()));

  Get.lazyPut(() => UsersListController(usersRepository: Get.find()));
}
