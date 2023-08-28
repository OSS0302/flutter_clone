import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_clone/presentation/components/avatar_widget.dart';

enum AvatarType { storyBoardAvtar, nickNameAvatar, mainStroyBoard }

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
    this.size = 65,
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
          borderRadius: BorderRadius.circular(size!),
          child: SizedBox(
            width: size,
            height: size,
            child: CachedNetworkImage(
              imageUrl: thumbPath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

// 나의 스토리 보드
  Widget myStoryBoard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.1,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

// 메인 스토리보드
  Widget mainMyStoryBoard(BuildContext context) {
    return Row(
      children: [
        gradationWidget(context),
        Text(
          nickName ?? '',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.storyBoardAvtar:
        return gradationWidget(context);
        break;
      case AvatarType.nickNameAvatar:
        return myStoryBoard(context);
        break;
      case AvatarType.mainStroyBoard:
        return mainMyStoryBoard(context);
        break;
    }
  }
}
