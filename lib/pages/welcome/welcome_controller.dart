import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../enums/data/postData.dart';
import '../../models/post.dart';


class WelcomeController extends GetxController {
  bool isInternet = false;
  List<PostModel> ?postListData;
  ScrollController? listItemScroll;
  String ?likeFilterValue;
  String ?dateFilterValue;
  bool isLoading = false;

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

  Future<void> getPostListItem() async {
    isLoading = true;
    update();
    var jsonData = postList;
    List<PostModel> lists = [];
    for (var v in jsonData) {
      PostModel list = PostModel();
      list.id = v['id'];
      list.likeCount = v['likeCount'];
      list.commentCount = v['commentCount'];
      list.description = v['description'];
      list.url = v['url'];
      lists.add(list);
    }
    postListData = lists;
    isLoading = false;
    update();
  }

  void sortByPopularity(val) {
    isLoading = true;
    likeFilterValue = val;
    dateFilterValue = null;
    update();
    var jsonData = postList;
    List<PostModel> lists = [];
    for (var v in jsonData) {
      PostModel list = PostModel();
      list.id = v['id'];
      list.likeCount = v['likeCount'];
      list.commentCount = v['commentCount'];
      list.description = v['description'];
      list.url = v['url'];
      lists.add(list);
    }
    if(likeFilterValue == "High to Low") {
      lists.sort((a, b) => -(a.likeCount?.compareTo(b.likeCount!) ?? 0));
    } else {
      lists.sort((a, b) => a.likeCount?.compareTo(b.likeCount!) ?? 0);
    }
    postListData = lists;
    isLoading = false;
    update();
  }

  void sortByDate(val) {
    isLoading = true;
    likeFilterValue = null;
    dateFilterValue = val;
    update();
    var jsonData = postList;
    List<PostModel> lists = [];
    for (var v in jsonData) {
      PostModel list = PostModel();
      list.id = v['id'];
      list.likeCount = v['likeCount'];
      list.commentCount = v['commentCount'];
      list.description = v['description'];
      list.url = v['url'];
      lists.add(list);
    }
    if(likeFilterValue == "High to Low") {
      lists.sort((a, b) => -(a.likeCount?.compareTo(b.likeCount!) ?? 0));
    } else {
      lists.sort((a, b) => a.likeCount?.compareTo(b.likeCount!) ?? 0);
    }
    postListData = lists;
    isLoading = false;
    update();
  }

  @override
  void onInit() {
    listItemScroll = ScrollController();
    checkNetwork();
    getPostListItem();
    super.onInit();
  }

}
