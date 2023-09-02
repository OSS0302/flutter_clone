import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  State<Reels> createState() => _ReelsState();
}
class _ReelsState extends State<Reels> {

Widget _imageSelectList() {
  return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.5,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: CachedNetworkImage(
            imageUrl:
            "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
            fit: BoxFit.cover,
          ),
        );
      });
}


Widget _body(){
  return SingleChildScrollView(
    child: Column(
      children: [
        _imageSelectList(),
      ],
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _body(),

    );
  }
}
