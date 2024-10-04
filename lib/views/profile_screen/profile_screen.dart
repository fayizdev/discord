import 'package:discord/utils/constands/color_constands.dart';
import 'package:discord/views/dummy_data_base/dummy_db.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [build_top_section(), build_bottom_section(context)],
          ),
          Positioned(
            top: 100,
            left: 50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: ColorConstands.bottomNavbarcolor,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: ColorConstands.primaryColor,
                backgroundImage: NetworkImage(DummyDb.datas[15]["dp"]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build_bottom_section(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorConstands.secondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              build_about_section(context),
              SizedBox(
                height: 30,
              ),
              build_member_section(context),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: ColorConstands.greyshade2,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Your Friends",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorConstands.greyshade3),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: ColorConstands.mainwhite,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container build_member_section(BuildContext context) {
    return Container(
      height: 95,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: ColorConstands.greyshade2,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Discord Member Since",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorConstands.greyshade3),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "28 sept 2024",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                  color: ColorConstands.mainwhite),
            ),
          ],
        ),
      ),
    );
  }

  Container build_about_section(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: ColorConstands.greyshade2,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Amal Joseph",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: ColorConstands.mainwhite),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: ColorConstands.mainwhite,
                )
              ],
            ),
            SizedBox(height: 1),
            Row(
              children: [
                Text(
                  "amaljoseph_88097",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: ColorConstands.mainwhite),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorConstands.blueshade,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: ColorConstands.mainwhite,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Add Status",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorConstands.mainwhite),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorConstands.blueshade,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: ColorConstands.mainwhite,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorConstands.mainwhite),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget build_top_section() {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorConstands.primaryColor,
          borderRadius: BorderRadius.zero,
          border: Border.all(width: 0)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorConstands.mainblack,
                  child: Icon(
                    Icons.shopping_bag,
                    color: ColorConstands.mainwhite,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstands.mainblack),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      "Nitro",
                      style: TextStyle(
                          fontSize: 15, color: ColorConstands.mainwhite),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorConstands.mainblack,
                  child: Icon(
                    Icons.settings,
                    color: ColorConstands.mainwhite,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
