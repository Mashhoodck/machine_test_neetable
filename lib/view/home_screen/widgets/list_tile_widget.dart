import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:machine_test_neetable/core/constants/constants.dart';
import 'package:machine_test_neetable/model/user_model.dart';

class ListTileWidget extends StatelessWidget {
  final int index;
  Results results;
  ListTileWidget({Key? key, required this.index, required this.results})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(screenHeight * 0.02),
      child: SizedBox(
        child: Row(
          children: [
            CircleAvatar(
                radius: screenHeight * 0.04,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(screenHeight * 0.05),
                  child: Image.network(
                    results.picture!.large.toString(),
                    fit: BoxFit.cover,
                  ),
                )),
            kWidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  results.name?.first ?? "No Data".toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                AutoSizeText(results.login?.username ?? "UserName not found",
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
            kWidth10
          ],
        ),
      ),
    );
  }
}
