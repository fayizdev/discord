import 'package:discord/utils/constands/color_constands.dart';
import 'package:discord/views/chat_screen/chat_screen.dart';
import 'package:discord/views/dummy_data_base/dummy_db.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isCircular = true;
  int idx = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstands.primaryColor,
      body: Row(
        children: [
          Container(
            width: 90,
            height: double.infinity,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: ColorConstands.secondaryColor,
                          child: Icon(
                            Icons.message,
                            color: ColorConstands.mainwhite,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: ColorConstands.dividercolor,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 150,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return build_circle_button(index);
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 10),
                        itemCount: DummyDb.datas.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            ),
            child: Container(
              color: ColorConstands.secondaryColor,
              width: MediaQuery.of(context).size.width - 90,
              height: double.infinity,
              child: Column(
                children: [
                  build_title_section(),
                  SizedBox(
                    height: 7,
                  ),
                  Divider(
                    color: ColorConstands.dividercolor,
                  ),
                  build_dropdown_section(),
                  SizedBox(
                    height: 10,
                  ),
                  build_dropdown_voice_section(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget build_circle_section(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          idx = index;
        });
      },
      child: CircleAvatar(
        radius: 35,
        backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
      ),
    );
  }

  Widget build_circle_button(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          idx = index;
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AnimatedContainer(
          duration: Duration(seconds: 0),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: ColorConstands.greyshade2, // Background color for visibility
            shape:
                _selectedIndex == index ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: _selectedIndex == index
                ? BorderRadius.circular(20) // Border radius for rectangle
                : null,
            image: _selectedIndex == index
                ? DecorationImage(
                    image: NetworkImage(DummyDb.datas[idx]["dp"]),
                    fit: BoxFit.cover,
                  )
                : DecorationImage(
                    image: NetworkImage(DummyDb.datas[idx]["dp"]),
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }

  Widget build_dropdown_section() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: ColorConstands.greyshade1,
                  ),
                  Text(" Text Channels",
                      style: TextStyle(
                        color: ColorConstands.greyshade1,
                        fontSize: 17,
                      )),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              idx: idx,
                            ),
                          ));
                    },
                    child: Text(
                      DummyDb.datas[idx]["tch1"],
                      style: TextStyle(
                          fontSize: 16, color: ColorConstands.greyshade1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              idx: idx,
                            ),
                          ));
                    },
                    child: Text(
                      DummyDb.datas[idx]["tch2"],
                      style: TextStyle(
                          fontSize: 16, color: ColorConstands.greyshade1),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget build_dropdown_voice_section() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: ColorConstands.greyshade1,
                  ),
                  Text(" Voice Channels",
                      style: TextStyle(
                        color: ColorConstands.greyshade1,
                        fontSize: 17,
                      )),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      build_bottom_sheet();
                    },
                    child: Text(
                      DummyDb.datas[idx]["vc1"],
                      style: TextStyle(
                          fontSize: 16, color: ColorConstands.greyshade1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      build_bottom_sheet();
                    },
                    child: Text(
                      DummyDb.datas[idx]["vc2"],
                      style: TextStyle(
                          fontSize: 16, color: ColorConstands.greyshade1),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<dynamic> build_bottom_sheet() {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 300,
        decoration: BoxDecoration(
            color: ColorConstands.secondaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorConstands.mainblack,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorConstands.mainwhite,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorConstands.mainblack,
                    child: Center(
                      child: Icon(
                        Icons.person_add_alt_1,
                        color: ColorConstands.mainwhite,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorConstands.dividercolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorConstands.mainwhite,
                      child: Center(
                        child: Icon(
                          Icons.mic,
                          color: ColorConstands.mainblack,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorConstands.greenshade),
                      child: Center(
                          child: Text(
                        "Join voice",
                        style: TextStyle(
                            color: ColorConstands.mainwhite,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorConstands.secondaryColor,
                      child: Center(
                        child: Icon(
                          Icons.message,
                          color: ColorConstands.mainwhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget build_title_section() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                DummyDb.datas[idx]["name"],
                style: TextStyle(
                    fontSize: 20,
                    color: ColorConstands.mainwhite,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "'s Server",
                style: TextStyle(
                    fontSize: 20,
                    color: ColorConstands.mainwhite,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.keyboard_arrow_right, color: ColorConstands.greyshade1)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorConstands.bottomNavbarcolor,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: ColorConstands.greyshade1,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: ColorConstands.greyshade1),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 17,
                child: Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: ColorConstands.greyshade1,
                  ),
                ),
                backgroundColor: ColorConstands.bottomNavbarcolor,
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 17,
                child: Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Icon(
                    Icons.access_alarm,
                    size: 20,
                    color: ColorConstands.greyshade1,
                  ),
                ),
                backgroundColor: ColorConstands.bottomNavbarcolor,
              )
            ],
          )
        ],
      ),
    );
  }
}
