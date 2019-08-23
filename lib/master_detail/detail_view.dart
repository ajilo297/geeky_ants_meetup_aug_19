import 'package:flutter/material.dart';
import 'package:geeky_ants_demo/master_detail/user_model.dart';

class DetailView extends StatelessWidget {
  final UserModel user;

  DetailView({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(
          user.name,
          style: Theme.of(context).textTheme.title,
        ),
        trailing: Text(user.gender.toString().split('.')[1]),
        subtitle: Text(user.email + '\n'+ user
        .phone),
      ),
    );
  }
}
