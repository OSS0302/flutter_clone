import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/avatar_widget.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';

class ActiveHistory extends StatelessWidget {
  const ActiveHistory({Key? key}) : super(key: key);

  // appbar
  PreferredSizeWidget _appbar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        '알림',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  // 팔로우 요청
  Widget fallow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, //color of border
                width: 2, )
            ),
            child: AvatarWidget(
              size: 56,
              type: AvatarType.nickNameAvatar,
              thumbPath:
                  'https://techgeeksblog.com/wp-content/uploads/2023/03/How-to-See-Sent-Follow-Request-on-Instagram.webp',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text.rich(
                TextSpan(
                  text: '팔로우 요청',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Text.rich(
                TextSpan(
                  text: '요청을 승인하거나 무시합니다.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  // 활동 스토리
  Widget _activeStory() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          AvatarWidget(
            size: 40,
            type: AvatarType.nickNameAvatar,
            thumbPath:
                'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-19/363233336_296568409535930_6371283386676776730_n.jpg?stp=dst-jpg_s160x160&_nc_cat=102&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=PXXzV5bVk3kAX-rj80c&_nc_ht=scontent-ssn1-1.cdninstagram.com&oh=00_AfCv0IeSXxyaTQ_33nn_EjQkHhBk6unrnvY5EJdDXIzxWg&oe=64F35F62',
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Text.rich(
              TextSpan(
                text: '상수님',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: '님이 회원님의  게시글을 좋아합니다. ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: ' 5일전  ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            child: const Text(
              '팔로우',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 바디
  Widget _newRecentlyActiveView(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _activeStory(),
          _activeStory(),
          _activeStory(),
          _activeStory(),
        ],
      ),
    );
  }

// 바디
  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          fallow(),
          SizedBox(child: Divider(thickness: 1,)),
          _newRecentlyActiveView(context, '오늘'),
          SizedBox(child: Divider(thickness: 1,)),
          _newRecentlyActiveView(context, '이번주'),
          SizedBox(child: Divider(thickness: 1,)),
          _newRecentlyActiveView(context, '이번달'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: _body(context),
    );
  }
}
