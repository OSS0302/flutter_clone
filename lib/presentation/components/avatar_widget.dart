import 'package:flutter/material.dart';

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
    this.hasStroy,
    required this.thumbPath,
    this.nickName,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.storyBoardAvtar:
        return gradationWidget(context);
        break;
      case AvatarType.nickNameAvatar:
        break;
      case AvatarType.bottomNavAvatar:
        break;
    }
    return Container();
  }
}

//그라데이션 있는 위젯
Widget gradationWidget(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.16,
    height: MediaQuery.of(context).size.height * 0.1,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple,
            Colors.orange,
          ]),
      shape: BoxShape.circle,
    ),
  );
}
