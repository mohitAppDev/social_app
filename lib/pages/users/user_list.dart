import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/constants/constants.dart';
import '../../common/common.dart';
import '../../models/user.dart';
import 'user_list_controller.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('USERS'),
          ),
          body: controller.isInternet
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: controller.userList == null
                        ? Center(child: Text(LabelConst.labelPostNotFound, style: Theme.of(context).textTheme.headlineLarge))
                        : ReusableScrollBar(
                      controller: controller.listItemScroll,
                      child: ListView.builder(
                        controller: controller.listItemScroll,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: controller.userList?.length,
                        itemBuilder: (BuildContext context, int index) {
                          UserModel list = controller.userList![index];
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        "${list.url}",
                                        fit: BoxFit.cover,
                                        height: 50.0,
                                        width: 50.0,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Name: ${list.name}"),
                                        Text("Email: ${list.email}"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              : Center(
                  child: Text("NO INTERNET",
                      style: Theme.of(context).textTheme.headlineLarge)),
        );
      },
    );
  }
}
