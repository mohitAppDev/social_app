import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/constants/constants.dart';
import 'package:social_app/pages/welcome/welcome_controller.dart';
import '../../common/common.dart';
import '../../models/post.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('INSTA SHARE'),
          ),
          body: controller.isInternet
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 10),
                    child: controller.postListData == null
                        ? Center(child: Text(LabelConst.labelPostNotFound, style: Theme.of(context).textTheme.headlineLarge))
                        : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 165, height: 30,
                                  child: ReusableDropDown(
                                    selectedValue: controller.likeFilterValue,
                                    items: ["High to Low", "Low to High"].map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item, style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.fade,
                                      ),
                                    )).toList(),
                                    onChanged: (value) {
                                      controller.sortByPopularity(value);
                                    },
                                    iconData: const Icon(Icons.arrow_drop_down_sharp),
                                    text: Text(LabelConst.labelDropFilter,
                                        style: Theme.of(context).textTheme.subtitle2,
                                        overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                SizedBox(
                                  width: 165, height: 30,
                                  child: ReusableDropDown(
                                    selectedValue: controller.dateFilterValue,
                                    items: ["Latest to Old", "Old to Latest"].map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item, style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.fade,
                                      ),
                                    )).toList(),
                                    onChanged: (value) {
                                      controller.sortByDate(value);
                                    },
                                    iconData: const Icon(Icons.arrow_drop_down_sharp),
                                    text: Text("SORT BY DATE",
                                        style: Theme.of(context).textTheme.subtitle2,
                                        overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ReusableScrollBar(
                                controller: controller.listItemScroll,
                                child: ListView.builder(
                                  controller: controller.listItemScroll,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: controller.postListData?.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    PostModel list = controller.postListData![index];
                                    return ReusableCard(
                                      likeCount: "${list.likeCount}",
                                      desc: "${list.description}",
                                      commentCount: "${list.commentCount}",
                                      url: "${list.url}",
                                      id: list.id,
                                    );
                                  },
                                ),
                              ),
                          ],
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
