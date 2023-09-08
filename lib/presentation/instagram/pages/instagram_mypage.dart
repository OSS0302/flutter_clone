import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/avatar_widget.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  Widget _statisticeone(String title, int value) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _infomation(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarWidget(
                type: AvatarType.storyBoardAvtar,
                thumbPath:
                    "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
                size: 80,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: _statisticeone('Post', 15)),
                    Expanded(child:_statisticeone('Followers', 11)),
                    Expanded(child:_statisticeone('Following', 4)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        leadingWidth: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.lock_outline_rounded),
          color: Colors.black,
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                'oss0302',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black,
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(onTap: () {}, child: ImageData(IconsPath.uploadIcon)),
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ImageData(IconsPath.menuIcon),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _infomation(context),
          ],
        ),
      ),
    );
  }
}
