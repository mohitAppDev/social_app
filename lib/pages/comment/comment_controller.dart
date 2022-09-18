import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/models/comment.dart';
import '../../enums/data/comment.dart';

class CommentController extends GetxController {
  dynamic a = Get.arguments;
  bool isInternet = false;
  List<CommentModel> ?commentListData;
  ScrollController? listItemScroll;
  String ?likeFilterValue;
  String ?dateFilterValue;
  TextEditingController commentController = TextEditingController();

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

  Future<void> getCommentListItem() async {
    var jsonData = comment;
    List<CommentModel> lists = [];
    for (var v in jsonData) {
      CommentModel list = CommentModel();
      if(a == v['postId']) {
        list.id = v['id'];
        list.comment = v['comment'];
        list.postId = v['postId'];
        list.email = v['email'];
        lists.add(list);
      }
    }
    commentListData = lists;
    update();
  }

  @override
  void onInit() {
    listItemScroll = ScrollController();
    checkNetwork();
    getCommentListItem();
    super.onInit();
  }

}
