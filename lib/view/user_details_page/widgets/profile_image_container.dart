import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:machine_test_neetable/core/colors/colors.dart';
import 'package:machine_test_neetable/model/user_model.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/circlea_avatar_widgets.dart';

class ProfileImageContainer extends StatelessWidget {
  const ProfileImageContainer(
      {Key? key, required this.size, required this.results})
      : super(key: key);

  final Size size;
  final Results results;

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: size.height * 0.4,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kGradientTwo, kGradientOne],
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackArrowButtonWidget(),
          Column(
            children: [
              kHight10,
              Center(
                  child: CircleAvatar(
                      backgroundColor: kGradientTwo,
                      radius: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.network(
                          results.picture!.large.toString(),
                          fit: BoxFit.cover,
                        ),
                      ))),
              kHight10,
              AutoSizeText(
                "@ ${results.login!.username}".toString(),
                style: const TextStyle(
                    fontSize: 22,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BackArrowButtonWidget extends StatelessWidget {
  const BackArrowButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          )),
      onTap: () => Navigator.pop(context),
    );
  }
}
