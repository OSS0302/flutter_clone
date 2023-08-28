import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/avatar_widget.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';
import 'package:flutter_clone/presentation/components/post_widget.dart';

class home extends StatelessWidget {
  //const home({Key? key}) : super(key: key);


  List<String> storyBoardList = [
    "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
    "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
    "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
    "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
    "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
    "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(
          IconsPath.logo,
          width: MediaQuery.of(context).size.height * 0.5,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(IconsPath.activeOff,
                  width: MediaQuery.of(context).size.height * 0.08),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ImageData(IconsPath.directMessage,
                  width: MediaQuery.of(context).size.height * 0.08),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(context),
          _postList(),
        ],
      ),
    );
  }

  // 스토리 보드
  Widget _storyBoardList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), //  맨 처음 스토리 보드 패딩
        child: Row(children: [
          _myStroy(context),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          ...List.generate(
            storyBoardList.length,
            (index) => AvatarWidget(
              type: AvatarType.storyBoardAvtar,
              thumbPath:
              storyBoardList[index],
              size: 70,
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _myStroy(BuildContext context) {
  return Stack(
    children: [
      AvatarWidget(
        type: AvatarType.nickNameAvatar,
        thumbPath: 'https://instagram.fbdj5-1.fna.fbcdn.net/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ht=instagram.fbdj5-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=WoEnqtGhc9MAX8wtQPJ&edm=ABFeTR8BAAAA&ccb=7-5&ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2-ccb7-5&oh=00_AfAcfOIMDEWnfmSasTYE3xHi2NTet19vb4UY9NB1nGTl_A&oe=64ECABCF&_nc_sid=8ad95d',
        size: 70,
      ),
      Positioned(
          right: 5,
          bottom: 0,
          child: Container(
          width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.height * 0.04,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.01,
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
      ),
    ],
  );
}
Widget _postList(){
  return Column(
    children: List.generate(20, (index) => PostWidget()),
  );
}


