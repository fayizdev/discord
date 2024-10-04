import 'package:discord/utils/constands/color_constands.dart';
import 'package:discord/views/dummy_data_base/dummy_db.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.idx});
  final idx;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorConstands.secondaryColor,
        leading: Icon(
          Icons.arrow_back,
          size: 20,
          color: ColorConstands.greyshade1,
        ),
        title: Text(
          DummyDb.datas[idx]["vc1"],
          style: TextStyle(fontSize: 20, color: ColorConstands.mainwhite),
        ),
        actions: [
          CircleAvatar(
            radius: 17,
            child: Padding(
              padding: const EdgeInsets.all(.0),
              child: Icon(
                Icons.search,
                size: 20,
                color: ColorConstands.mainwhite,
              ),
            ),
            backgroundColor: ColorConstands.dividercolor,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: ColorConstands.secondaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              color: ColorConstands.dividercolor,
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(color: ColorConstands.secondaryColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorConstands.dividercolor,
                      child: Icon(
                        Icons.add,
                        color: ColorConstands.greyshade1,
                        size: 30,
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorConstands.dividercolor,
                      child: Icon(
                        Icons.shape_line,
                        color: ColorConstands.greyshade1,
                        size: 30,
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorConstands.dividercolor,
                      child: Icon(
                        Icons.card_giftcard,
                        color: ColorConstands.greyshade1,
                        size: 30,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 300,
                      decoration: BoxDecoration(
                          color: ColorConstands.dividercolor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Message #...",
                              style: TextStyle(
                                  fontSize: 19,
                                  color: ColorConstands.greyshade1),
                            ),
                            Icon(
                              Icons.face,
                              color: ColorConstands.greyshade1,
                            )
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorConstands.dividercolor,
                      child: Icon(
                        Icons.mic,
                        color: ColorConstands.greyshade1,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
