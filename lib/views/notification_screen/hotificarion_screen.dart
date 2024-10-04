import 'package:discord/utils/constands/color_constands.dart';
import 'package:discord/views/dummy_data_base/dummy_db.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int idx;
    return Scaffold(
      backgroundColor: ColorConstands.secondaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstands.secondaryColor,
        title: Text(
          "Notifications",
          style: TextStyle(
              color: ColorConstands.mainwhite,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              backgroundColor: ColorConstands.dividercolor,
              radius: 18,
              child: Icon(
                Icons.more_horiz,
                color: ColorConstands.mainwhite,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      build_notification_message(index),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: DummyDb.datas.length),
            )
          ],
        ),
      ),
    );
  }

  Padding build_notification_message(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(DummyDb.datas[index]["dp"]),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You have new message in",
                    style: TextStyle(
                        color: ColorConstands.greyshade1,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    DummyDb.datas[index]["name"],
                    style: TextStyle(
                        color: ColorConstands.mainwhite,
                        fontWeight: FontWeight.normal,
                        fontSize: 17),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    DummyDb.datas[index]["date"],
                    style: TextStyle(
                        color: ColorConstands.greyshade3, fontSize: 15),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
