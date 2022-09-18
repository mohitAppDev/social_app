import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../enums/data/users.dart';
import '../../models/post.dart';
import '../../models/user.dart';

class UserController extends GetxController {
  bool isInternet = false;
  List<UserModel> ?userList;
  ScrollController? listItemScroll;

  Future<void> checkNetwork() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      isInternet = true;
      update();
    } else {
      isInternet = false;
      update();
    }
  }

  Future<void> getUsers() async {
    var jsonData = userData;
    List<UserModel> lists = [];
    for (var v in jsonData) {
      UserModel list = UserModel();
      list.id = v['id'];
      list.name = v['name'];
      list.email = v['email'];
      list.url = v['url'];
      lists.add(list);
    }
    userList = lists;
    update();
  }

  @override
  void onInit() {
    listItemScroll = ScrollController();
    checkNetwork();
    getUsers();
    super.onInit();
  }

}
