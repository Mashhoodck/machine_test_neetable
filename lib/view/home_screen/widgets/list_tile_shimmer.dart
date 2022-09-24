import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:machine_test_neetable/core/colors/colors.dart';
import 'package:machine_test_neetable/core/constants/constants.dart';
import 'package:shimmer/shimmer.dart';

class ListTileShimmerWidget extends StatelessWidget {
  const ListTileShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    int offeSet = 0;
    int time = 800;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
        child: ListView.separated(
          itemBuilder: (ontext, index) {
            offeSet += 5;
            time = 800 + offeSet;
            return Shimmer.fromColors(
              baseColor: kShimmerBaseColor,
              highlightColor: kWhiteColor,
              child: ShimmerSkelton(
                  screenWidth: screenWidth, screenHeight: screenHeight),
            );
          },
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) => kHight10,
        ),
      ),
    );
  }
}

class ShimmerSkelton extends StatelessWidget {
  const ShimmerSkelton({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: screenHeight * 0.04,
            backgroundColor: kWhiteColor,
          ),
          kWidth10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skelton(
                  height: screenHeight * 0.02,
                ),
                kHight10,
                Skelton(
                  height: screenHeight * 0.02,
                  width: screenWidth * 0.20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Skelton extends StatelessWidget {
  final double? height;
  final double? width;
  const Skelton({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.white),
    );
  }
}
