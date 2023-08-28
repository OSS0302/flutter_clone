import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';
import 'package:flutter_clone/presentation/instagram/instagram_home.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int screenIndex = 0;

  List<Widget> screenList = [
    const Text('홈스크린'),
    const Text('서치스크린'),
    const Text('업데이트'),
    const Text('액티브'),
    const Text('마이')
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.cyan,
          body:IndexedStack(
            index: screenIndex,
            children: [
             home(),
            ],
          ),

          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            currentIndex: screenIndex,
            elevation: 0,
            onTap: (index) {
              setState(() { //상태 갱신이 되지 않으면 동작을 하지 않음
                screenIndex = index;
              });
            },

            items: [
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.homeOff),
                activeIcon: ImageData(IconsPath.homeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.searchOff),
                activeIcon: ImageData(IconsPath.searchOn),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.uploadIcon),
                label: 'upload',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.reelsOn),
                activeIcon: ImageData(IconsPath.reelsOn),
                label: 'active',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                label: 'home',
              ),

            ],

          ),
        ),
        onWillPop: () async {
          return false;
        });
  }
}
