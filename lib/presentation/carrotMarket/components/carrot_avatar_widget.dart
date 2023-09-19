import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum CarrotAvatarType { storyBoardAvatar, bodyBoardAvatar, chattingAvatar }

class CarrotAvatarWidget extends StatelessWidget {
  bool? hasStroy; // 있는지없는지 확인
  String imagePath; // 이미지 경로
  String? nickName; // 닉네임
  CarrotAvatarType type; // 타입
  double? size; // 사이즈

  CarrotAvatarWidget({
    Key? key,
    required this.type,
    required this.imagePath,
    this.hasStroy,
    this.nickName,
    this.size = 65,
  }) : super(key: key);

  Widget type1(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    width: size,
                    height: size,
                    child: CachedNetworkImage(
                      imageUrl: imagePath,
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Align(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: 35,
                        height: 35,
                        color: Colors.black,
                        child: Align(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              width: 30,
                              height: 30,
                              color: Colors.grey,
                              child: Icon(Icons.add,color: Colors.white,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      Text(
        nickName ?? 'ccccvvc',
        style: TextStyle(fontSize: 15,color: Colors.white),
        overflow: TextOverflow.clip,
        maxLines: 2,
      )
        ],
      ),
    );
  }

  Widget type2(BuildContext context) {
    return Container();
  }

  Widget type3(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case CarrotAvatarType.storyBoardAvatar:
        return type1(context);
        break;
      case CarrotAvatarType.bodyBoardAvatar:
        return type2(context);
        break;
      case CarrotAvatarType.chattingAvatar:
        return type3(context);
        break;
    }
  }
}
