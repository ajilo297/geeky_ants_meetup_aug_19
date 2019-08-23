import 'package:flutter/material.dart';
import 'package:geeky_ants_demo/master_detail/detail_view.dart';
import 'package:geeky_ants_demo/master_detail/master_view.dart';
import 'package:geeky_ants_demo/master_detail/user_model.dart';

class MasterDetailView extends StatefulWidget {
  @override
  _MasterDetailViewState createState() => _MasterDetailViewState();
}

class _MasterDetailViewState extends State<MasterDetailView> {
  UserModel _selectedUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Master Detail Example'),
      ),
      body: getView(context),
    );
  }

  Widget getView(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width > 500) {
      return Row(
        children: <Widget>[
          SizedBox(
            width: 300,
            child: getMasterView(
              (user) => setState(() {
                this._selectedUser = user;
              }),
            ),
          ),
          Expanded(
            child: _selectedUser != null
                ? DetailView(user: _selectedUser)
                : Center(child: Text('Select a User')),
          ),
        ],
      );
    }
    return getMasterView((user) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text(user.name),
              ),
              body: DetailView(user: user),
            );
          },
        ),
      );
    });
  }

  Widget getMasterView(void Function(UserModel user) selectedUser) {
    return MasterView(
      onUserSelected: selectedUser,
    );
  }
}
