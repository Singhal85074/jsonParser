import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import './http_request.dart';
import './single_response.dart';
import './userdata.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  HttpService http;
  SingleResponse singleResponse;
  User user;
  bool isLoading = false;
  Future<Response> getData() async {
    Response response;

    try {
      isLoading = true;
      response = await http.getRequest("/api/users/2");
      isLoading = false;
      if (response.statusCode == 200) {
        setState(() {
          singleResponse = SingleResponse.fromJson(response.data);
          user = singleResponse.user;
        });
      } else {
        print("There is something went wrong");
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  void initState() {
    http = HttpService();
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Json screen'),
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : user != null
                ? Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(user.avatar),
                        Container(
                          height: 16,
                        ),
                        Text('${user.firstname} ${user.lastname}'),
                      ],
                    ),
                  )
                : Center(
                    child: Text('No user data available'),
                  ));
  }
}
