import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/helper/preferences/local_data_source.dart';
import 'package:social_app/helper/preferences/local_data_source_impl.dart';
import 'package:social_app/pages/page.dart';
import 'constants/pref_const.dart';

class ApplicationController extends GetxController {
  final LocalDataSource _localDataSource = LocalDataSourceImpl();
  bool isInternetOn = false;

  Future<bool> logout() async {
    await _localDataSource.deleteAllData();
    return true;
  }

  Future<Widget> screenFunction() async {
    var dataToken = await _localDataSource.readSecureData("userToken");
    var isUserLoginIn = await _localDataSource.readSecureData("isUserLoginIn");
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      if (dataToken == null) {
        return  const WelcomePage();
      } else {
        if (isUserLoginIn == PrefKeyConst.isUserLoggedIn) {
          return const WelcomePage();
        } else {
          return const WelcomePage();
        }
      }
    } else {
      return NetworkErrorPage();
    }
  }

}