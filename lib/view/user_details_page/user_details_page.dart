import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test_neetable/core/colors/colors.dart';
import 'package:machine_test_neetable/core/constants/constants.dart';
import 'package:machine_test_neetable/model/user_model.dart';
import 'package:machine_test_neetable/view/user_details_page/widgets/user_data_widget.dart';
import '../../controller/user_list_controller.dart';
import 'widgets/profile_image_container.dart';

class UserDetailsPage extends StatelessWidget {
  final Results results;
  int index;
  UserDetailsPage({super.key, required this.results, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double textHead = 22;
    double textBody = 25;
    var controller = Get.find<UsersListController>();
    return SafeArea(
        child: Scaffold(
            body: controller.isLoaded
                ? Column(
                    children: [
                      ProfileImageContainer(
                        size: size,
                        results: controller.usersList[index],
                      ),
                      kHight10,
                      Expanded(
                        child: ListView(
                          children: [
                            kHight10,
                            ProfileTextWidget(
                              title: "First Name",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.name?.first ?? "NoData".toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "Last Name",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.name?.last ?? "No Data".toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "Email",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.email ?? "No mailId".toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "Phone NUmber",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.cell.toString(),
                              textcolor: kGreenColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "Gender",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.gender.toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "Age",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.dob!.age.toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "Country",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.location?.country ??
                                  "No Data".toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "City",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.location?.city ??
                                  "No Data".toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                            ProfileTextWidget(
                              title: "Country",
                              textSize: textHead,
                              textcolor: kTextGrey,
                            ),
                            ProfileTextWidget(
                              title: results.location?.country ??
                                  "No Data".toString(),
                              textcolor: kBlackColor,
                              textSize: textBody,
                            ),
                            kDivider,
                          ],
                        ),
                      )
                    ],
                  )
                : const CircularProgressIndicator(
                    color: kBlackColor,
                  )));
  }

  UserDetailsWidget ProfileTextWidget(
      {required String title, required Color textcolor, double? textSize}) {
    return UserDetailsWidget(
      text: title,
      textColor: textcolor,
      fontSize: textSize,
    );
  }
}
