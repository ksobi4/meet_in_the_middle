// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mitm4/features/home/presentation/widgets/member.dart';

import '../../model/user.dart';

class MembersList extends StatelessWidget {
  List<User> userList;
  MembersList({
    Key? key,
    required this.userList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          itemBuilder: ((context, index) {
            User user = userList[index];
            return MemberWidget(user: user);
          }),
          itemCount: userList.length),
    );
  }
}
