// void _showChannels(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     builder: (context) => Container(
//       height: 200,
//       child: ListView(
//         children: [
//           ListTile(title: Text('Channel 1')),
//           ListTile(title: Text('Channel 2')),
//           ListTile(title: Text('Channel 3')),
//           ListTile(title: Text('Channel 4')),
//         ],
//       ),
//     ),
//   );
// }

// Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Align(
//           alignment: Alignment.topLeft,
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 35,
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "You have new message in",
//                             style: TextStyle(
//                                 color: ColorConstands.grayshade1,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 17),
//                           ),
//                           Spacer(),
//                           Text(
//                             "1d",
//                             style: TextStyle(
//                                 color: ColorConstands.greyshade3, fontSize: 15),
//                           )
//                         ],
//                       ),
//                       Text("data")
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AvatarToggleScreen extends StatefulWidget {
  @override
  _AvatarToggleScreenState createState() => _AvatarToggleScreenState();
}

class _AvatarToggleScreenState extends State<AvatarToggleScreen> {
  bool _isCircular = true;

  void _toggleShape() {
    setState(() {
      _isCircular = !_isCircular;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular to Rectangle Avatar'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _toggleShape,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color for visibility
                  shape: _isCircular ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: _isCircular
                      ? null
                      : BorderRadius.circular(
                          10), // Border radius for rectangle
                  image: _isCircular
                      ? DecorationImage(
                          image:
                              NetworkImage('https://via.placeholder.com/150'),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Widget build_circle_button() {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         _isCircular = !_isCircular;
  //       });
  //     },
  //     child: AnimatedContainer(
  //       duration: Duration(seconds: 0),
  //       width: 70,
  //       height: 70,
  //       decoration: BoxDecoration(
  //         color: Colors.blue, // Background color for visibility
  //         shape: _isCircular ? BoxShape.circle : BoxShape.rectangle,
  //         borderRadius: _isCircular
  //             ? null
  //             : BorderRadius.circular(20), // Border radius for rectangle
  //         image: _isCircular
  //             ? DecorationImage(
  //                 image: NetworkImage('https://via.placeholder.com/150'),
  //                 fit: BoxFit.cover,
  //               )
  //             : null,
  //       ),
  //     ),
  //   );
  // }