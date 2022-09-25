import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test_neetable/controller/user_list_controller.dart';
import 'package:machine_test_neetable/core/colors/colors.dart';
import 'package:machine_test_neetable/model/user_model.dart';
import 'package:machine_test_neetable/view/home_screen/widgets/list_tile_shimmer.dart';
import 'package:machine_test_neetable/view/user_details_page/user_details_page.dart';
import 'package:machine_test_neetable/view/user_details_page/widgets/user_data_widget.dart';

import 'widgets/list_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _loadResources(bool reload) async {
    await Get.find<UsersListController>().getUsersList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: GetBuilder<UsersListController>(
      builder: (userListController) {
        return userListController.isLoaded
            ? RefreshIndicator(
                onRefresh: () async {
                  await _loadResources(true);
                },
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: userListController.usersList.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserDetailsPage(
                                    index: index,
                                    results:
                                        userListController.usersList[index],
                                  )),
                        );
                      },
                      child: ListTileWidget(
                        index: index,
                        results: userListController.usersList[index],
                      ),
                    );
                  }),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    thickness: 1,
                  ),
                ),
              )
            : const Center(child: ListTileShimmerWidget());
      },
    )));
  }
}
