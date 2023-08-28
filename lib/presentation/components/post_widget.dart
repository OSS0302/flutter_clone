import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/avatar_widget.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';
import 'package:flutter_clone/presentation/instagram/mypage.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.mainStroyBoard,
            nickName: 'oss0302',
            size: 30,
            thumbPath:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2f9Zi5zv-cwgkHhkxSEXVMyjmSqTB8zBXIz-L0rqnfYrnxBY4olFTb8syfcHCFO63Ps8&usqp=CAU',
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 이미지 영역
  Widget _image(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRisv-yQgXGrto6OxQxX62JyvyQGvRsQQ760g&usqp=CAU',
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.5,
    );
  }

// 카운트 영역
  Widget _infoCount(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 12),
              ImageData(
                IconsPath.likeOffIcon,
                width: MediaQuery.of(context).size.width * 0.17,
              ),
              SizedBox(width: 12),
              ImageData(
                IconsPath.replyIcon,
                width: MediaQuery.of(context).size.width * 0.17,
              ),
              SizedBox(width: 12),
              ImageData(
                IconsPath.directMessage,
                width: MediaQuery.of(context).size.width * 0.17,
              ),
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: MediaQuery.of(context).size.width * 0.13,
          )
        ],
      ),
    );
  }

  // 디스크립션 영역
  Widget _infoDescrption() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '좋아요150개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            '지구입니다.\n 지구환경을 사랑합니다.\n 지구온난화 와서 덥다 \n ',
            prefixText: 'oss0302',
            prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            onPrefixTap: () {
              print('마이페이지로 이동 '); // 일단 이렇게 두고 마이페이지 만들어서 넣어준다.
            },
            expandText: '더보기',
            collapseText: '접기',
            maxLines: 3,
            collapseOnTextTap: true,
            expandOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

// 댓글 만들기
  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          ' 199개 댓글 ',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(context),
          const SizedBox(height: 15),
          _image(context),
          const SizedBox(height: 15),
          _infoCount(context),
          const SizedBox(height: 5),
          _infoDescrption(),
          const SizedBox(height: 5),
          _replyTextBtn(),
          const SizedBox(height: 5),
          _dateago(),
        ],
      ),
    );
  }
}
// color: Colors.orange,
