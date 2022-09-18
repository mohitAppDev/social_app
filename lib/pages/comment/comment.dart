import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/constants/constants.dart';
import 'package:social_app/models/comment.dart';
import '../../common/common.dart';
import 'comment_controller.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CommentController>(
      init: CommentController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('COMMENT'),
          ),
          body: controller.isInternet
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: controller.commentListData == null
                        ? Center(child: Text(LabelConst.labelPostNotFound, style: Theme.of(context).textTheme.headlineLarge))
                        : Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width - 75,
                                  child: ReusableTextField(
                                    label: "Enter comment......",
                                    iconData: null,
                                    readOnly: false,
                                    noOfLine: 2,
                                    keyboardType: TextInputType.name,
                                    isObscureText: false,
                                    suffixIconMsg:null,
                                    onTap: () {},
                                    textCapitalization: TextCapitalization.none,
                                    isDialogField: true,
                                    controller: controller.commentController,
                                    errorText: null,
                                    hintText: "Enter comment......",
                                    currentFocus: null,
                                    nextFocus: null,
                                    isLastFocus: false,
                                    textInputType: TextInputType.name,
                                    isErrorAutoHide: false,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: ReusableButton(
                                      child: const Icon(Icons.send_outlined),
                                      onPressed: (){},
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
                                  itemCount: controller.commentListData?.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    CommentModel list = controller.commentListData![index];
                                    return Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("EMAIL: ${list.email}"),
                                          Text("COMMENT: ${list.comment}"),
                                        ],
                                      ),
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
