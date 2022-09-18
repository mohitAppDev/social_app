import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class ReusableCard extends StatelessWidget {
  final String desc, url, likeCount, commentCount;
  final int ?id;
  const ReusableCard({
    Key? key, required this.likeCount, required this.desc, required this.commentCount, required this.url, this.id
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                  const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),
            ),
            Stack(children: [
              Text(desc, style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),
                softWrap: true,
                maxLines: 2,
              ),
            ]),
            Padding(
              padding:
              const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 18,
                              color: Color.fromRGBO(172, 172, 172, 1)),
                          Text(
                            likeCount,
                            textAlign:
                            TextAlign.left,
                            style:
                            const TextStyle(
                              color:
                              Color.fromRGBO(
                                  172,
                                  172,
                                  172,
                                  1),
                              fontSize: 18,
                              fontWeight:
                              FontWeight
                                  .normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 36),
                      InkWell(
                        onTap: (){
                          Get.toNamed(AppRoutes.comment, arguments: id);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Icon(
                                Icons.mode_comment_outlined,
                                size: 18, color: Color.fromRGBO(172, 172, 172, 1),
                            ),
                            Text(
                              commentCount,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Color.fromRGBO(172, 172, 172, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.more_vert, size: 14, color: Color.fromRGBO(172, 172, 172, 1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
