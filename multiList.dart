import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import './http_request.dart';
import './list_user_screen.dart';
import './userdata.dart';

class ListUsers extends StatefulWidget {
  @override
  _ListUsersState createState() => _ListUsersState();
}

class _ListUsersState extends State<ListUsers> {
  HttpService http;
  bool isLoading = false;
  ListUserResponse listuserresponse;
  List<User> users;

  Future getListData() async {
    Response response;

    try {
      isLoading = true;
      response = await http.getRequest("/api/users?page=2");
      isLoading = false;
      if (response.statusCode == 200) {
        setState(() {
          listuserresponse = ListUserResponse.fromJson(response.data);
          users = listuserresponse.users;
        });
      } else {
        print("There is something went wrong");
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    http = HttpService();
    getListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : users != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    title: Text(user.firstname),
                    leading: Image.network(user.avatar),
                    subtitle: Text(user.email),
                  );
                },
                itemCount: users.length,
              )
            : Center(
                child: Text('No user data available'),
              );
  }
}
