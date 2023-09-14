// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
// class carrotMarket extends StatefulWidget {
//   const carrotMarket({Key? key}) : super(key: key);
//
//   @override
//   State<carrotMarket> createState() => _carrotMarketState();
// }
//
// class _carrotMarketState extends State<carrotMarket> {
//   final List<String> _valueList = [
//     '비전1동',
//     '서울',
//     '인천',
//     '수원',
//     '대전',
//     '대구',
//     '광주',
//     '부산'
//   ];
//   String _selectedValue = '비전1동';
//
// // appbar
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black87,
//       appBar: AppBar(
//         title: DropdownButton(
//           value: _selectedValue,
//           dropdownColor: Colors.grey[500],
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//           ),
//           underline: Container(),
//           items: _valueList.map((value) {
//             return DropdownMenuItem(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//           onChanged: (value) {
//             setState(() {
//               _selectedValue = value!;
//             });
//           },
//         ),
//         backgroundColor: Colors.black87,
//         centerTitle: false,
//         elevation: 0,
//         actions: const [
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Icon(Icons.menu),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Icon(Icons.search),
//           ),
//           Icon(Icons.notifications),
//         ],
//       ),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             tileList(
//               imagePath: 'assets/images/instagram/bottom_nav_home_off_icon.jpg',
//               title: 'PT 무료나눔 합니다.~!~!',
//               tileTime: '비전동 ・ 끌올 4일전',
//               whatFor: '나눔 🧡',
//               mailBox: 12,
//               messageBox: 12,
//               likeBox: 12,
//             ),
//             const Divider(
//               color: Colors.grey,
//             ),
//             tileList(
//               imagePath: 'assets/images/carrotMarket/pt.jpeg',
//               title: 'PT3회 양도',
//               tileTime: '비전동 10일전',
//               whatFor: '나눔 🧡',
//               // mailBox: 12,
//               messageBox: 12,
//               likeBox: 12,
//             ),
//             const Divider(
//               color: Colors.grey,
//             ),
//             tileList(
//               imagePath: 'assets/images/carrotMarket/carrotImage.jpeg',
//               title: 'PT3회 양도',
//               tileTime: '비전동 10일전',
//               whatFor: '나눔 🧡',
//               // mailBox: 12,
//               messageBox: 12,
//               likeBox: 12,
//             ),
//             const Divider(
//               color: Colors.grey,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget tileList({
//     String? imagePath,
//     String? title,
//     String? tileTime,
//     String? whatFor,
//     int mailBox = 0,
//     int messageBox = 0,
//     int likeBox = 0,
//   }) {
//     double widgetHeight = MediaQuery.of(context).size.height * 0.15;
//     return SizedBox(
//       height: widgetHeight,
//       width: MediaQuery.of(context).size.width,
//       child: Row(
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               width: widgetHeight * 0.7,
//               height: widgetHeight * 0.7,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(16),
//                 image: DecorationImage(
//                   image: AssetImage(
//                       imagePath ?? 'assets/images/carrotmarket/pt.jpeg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 4,
//             child: Center(
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       title ?? 'PT 무료나눔 합니다.~!~!',
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 4.0),
//                       child: Text(
//                         tileTime ?? '비전동 ・ 끌올 4일전',
//                         style: const TextStyle(
//                           color: Colors.grey,
//                           fontStyle: FontStyle.italic,
//                           fontSize: 14,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       whatFor ?? '나눔 🧡',
//                       style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16),
//                       textAlign: TextAlign.left,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         mailBox > 0
//                             ? const Icon(
//                                 Icons.email_outlined,
//                                 color: Colors.white,
//                               )
//                             : Container(),
//                         mailBox > 0
//                             ? Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 4.0),
//                                 child: Text(
//                                   mailBox.toString(),
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               )
//                             : Container(),
//                         messageBox > 0
//                             ? const Icon(
//                                 CupertinoIcons.chat_bubble_2,
//                                 color: Colors.white,
//                               )
//                             : Container(),
//                         messageBox > 0
//                             ? Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 4.0),
//                                 child: Text(
//                                   messageBox.toString(),
//                                   style: const TextStyle(color: Colors.white),
//                                 ),
//                               )
//                             : Container(),
//                         likeBox > 0
//                             ? const Icon(
//                                 CupertinoIcons.heart,
//                                 color: Colors.white,
//                               )
//                             : Container(),
//                         likeBox > 0
//                             ? Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 4.0),
//                                 child: Text(
//                                   likeBox.toString(),
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               )
//                             : Container(),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/carrotMarket/pages/carrothome.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';

class CarrotApp extends StatefulWidget {
  const CarrotApp({Key? key}) : super(key: key);

  @override
  State<CarrotApp> createState() => _CarrotAppState();
}

class _CarrotAppState extends State<CarrotApp> {
  int screenIndex = 0;
  List<Widget> screenList = [
    const Text('홈 스크린'),
    const Text('동네생활 '),
    const Text('내근처'),
    const Text('채팅'),
    const Text('나의 당근 ')
  ];
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
        child: Scaffold(
          backgroundColor: Color(0xFF1C1B1E),
          body: IndexedStack(
            index: screenIndex,
            children: [
              CarrotHome(),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
              selectedFontSize: 13,
              unselectedFontSize: 13,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              //selectedFontSize = 14.0,
              //unselectedFontSize
            backgroundColor: Color(0xFF1C1B1E),
            currentIndex: screenIndex,
            elevation: 0,
            onTap: (index) {
              setState(() { //상태 갱신이 되지 않으면 동작을 하지 않음
                screenIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon:  ImageData(IconsPath.ChomeOff,width: 100,),
                activeIcon:ImageData(IconsPath.ChomeOn,width: 100,),
                label: '홈',
              ),
              BottomNavigationBarItem(icon: ImageData(IconsPath.neighborhoodOff,width: 100,),
                activeIcon: ImageData(IconsPath.neighborhoodOn,width: 100,),
                label: '동네생활',
              ),
              BottomNavigationBarItem(icon: ImageData(IconsPath.locationOff,width: 100,),
                activeIcon: ImageData(IconsPath.locationOn,width: 100,),
                label: '내 근처',
              ),

              BottomNavigationBarItem(icon: ImageData(IconsPath.chattingOff,width: 100,),
                activeIcon: ImageData(IconsPath.chattingOn,width: 100),
                label: '채팅',
              ),
              BottomNavigationBarItem(icon: ImageData(IconsPath.mycarrotOff,width: 100,),
                activeIcon: ImageData(IconsPath.mycarrotOn,width: 100),
                label: '나의 당근',
              ),

            ]
          )
        ),
    onWillPop: () async {
      return false;
    });
  }
}
