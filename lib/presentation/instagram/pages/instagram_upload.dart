import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ImageData(IconsPath.closeImage),
        ),
      ),
      title: const Text(
        '새 게시물 ',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: const Text(
              '다음',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),
            ))
      ],
    );
  }
// _imagePreview
  Widget  _imagePreview(BuildContext context){
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 0.55,
        color: Colors.blue,
        child:  CachedNetworkImage(
        imageUrl:
        "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
        fit: BoxFit.cover,
      ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(context),
      body: _imagePreview(context),
    );
  }
}
