import 'package:flutter/material.dart';
import 'package:geeky_ants_demo/master_detail/user_model.dart';

class MasterView extends StatelessWidget {
  final void Function(UserModel user) onUserSelected;

  final List<UserModel> userList = [
    UserModel(
        email: 'testA@gmail.com',
        gender: Gender.FEMALE,
        name: 'A Test User',
        phone: '555-555-5555',
        color: Colors.red),
    UserModel(
        email: 'testB@gmail.com',
        gender: Gender.MALE,
        name: 'B Test User',
        phone: '555-555-5555',
        color: Colors.indigo),
    UserModel(
        email: 'testC@gmail.com',
        gender: Gender.FEMALE,
        name: 'C Test User',
        phone: '555-555-5555',
        color: Colors.blueGrey),
    UserModel(
        email: 'testD@gmail.com',
        gender: Gender.MALE,
        name: 'D Test User',
        phone: '555-555-5555',
        color: Colors.amber),
  ];

  MasterView({
    this.onUserSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withAlpha(80),
      child: ListView.builder(
        itemBuilder: (context, index) {
          UserModel user = userList.elementAt(index);
          return ListTile(
            onTap: () {
              if (onUserSelected != null) onUserSelected(user);
            },
            title: Text(user.name),
            leading: CircleAvatar(
              child: Text(
                user.name.substring(0, 1).toUpperCase(),
              ),
              backgroundColor: user.color,
            ),
          );
        },
        itemCount: userList.length,
      ),
    );
  }
}
