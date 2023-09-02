import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/avatar_widget.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_Reels.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_home.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_mypage.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_search.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_upload.dart';

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
          backgroundColor: Colors.black,
          body:IndexedStack(
            index: screenIndex,
            children: [
              Navigator(
              onGenerateRoute: (RouteSettings){
                 return MaterialPageRoute(builder: (context)=>  Home());
              },
              ),
             Navigator(
               onGenerateRoute: (RouteSettings){
                 return MaterialPageRoute(builder: (context)=> const Search());
               },
             ),
               Upload(),
               Reels(),
              MyPage(),
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
                icon: ImageData(IconsPath.searchOff,),
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
                icon:Container(
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black87, width: 1),
                            color: Colors.cyan,
                            shape: BoxShape.circle,
                          ),



                  child:    AvatarWidget(
                      size: 40,
                      type: AvatarType.nickNameAvatar,
                      thumbPath:
                      'https://thenounproject.com/api/private/icons/682465/edit/?backgroundShape=SQUARE&backgroundShapeColor=%23000000&backgroundShapeOpacity=0&exportSize=752&flipX=false&flipY=false&foregroundColor=%23000000&foregroundOpacity=1&imageFormat=png&rotation=0'
                  ),
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
