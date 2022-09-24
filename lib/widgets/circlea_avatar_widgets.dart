import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_test_neetable/model/user_model.dart';

class CircleAvatarWidget extends StatelessWidget {
  final int index;
  Results results;
  CircleAvatarWidget({
    required this.index,
    required this.results,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 50,
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(100.0),
          child: Image.network(
              "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"),
        ));
  }
}
