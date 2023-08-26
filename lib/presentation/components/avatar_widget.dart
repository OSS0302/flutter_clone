import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_clone/presentation/components/avatar_widget.dart';

enum AvatarType { storyBoardAvtar, nickNameAvatar, bottomNavAvatar }

class AvatarWidget extends StatelessWidget {
  bool? hasStroy;
  String thumbPath;
  String? nickName;
  AvatarType type;
  double? size;

  AvatarWidget({
    Key? key,
    required this.type,
    required this.thumbPath,
    this.hasStroy,
    this.nickName,
    this.size,
  }) : super(key: key);

//그라데이션 있는 위젯
  Widget gradationWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple,
              Colors.orange,
            ]),
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.21,
            height: MediaQuery.of(context).size.height * 0.1,
            child: CachedNetworkImage(
              imageUrl: thumbPath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

Widget MyStoryBoard(BuildContext context){
    return Container(
      padding: EdgeInsets.all(4),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.21,
          height: MediaQuery.of(context).size.height * 0.1,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.storyBoardAvtar:
        return gradationWidget(context);
        break;
      case AvatarType.nickNameAvatar:
        return MyStoryBoard(context);
        break;
      case AvatarType.bottomNavAvatar:
        return Container();
        break;
    }
  }
}
