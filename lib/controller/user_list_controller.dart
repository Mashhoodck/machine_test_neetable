import 'dart:convert';

import 'package:get/get.dart';
import 'package:machine_test_neetable/model/user_model.dart';

import 'package:machine_test_neetable/services/repository/repository.dart';

class UsersListController extends GetxController {
  final UsersRepository usersRepository;

  UsersListController({required this.usersRepository});

  List<dynamic> _usersList = [];
  List<dynamic> get usersList => _usersList;

  bool _isLoading = false;
  bool get isLoaded => _isLoading;

  Future<void> getUsersList() async {
    Response response = await usersRepository.getUsersData();

    try {
      if (response.statusCode == 200) {
        var result = response.body;

        print(result);

        _usersList = [];
        _usersList.addAll(UserModel.fromJson(result).userData);

        print(_usersList);
        _isLoading = true;

        update();
      } else {}
    } catch (e) {}
  }
}
