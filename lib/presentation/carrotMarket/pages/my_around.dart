import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyAround extends StatefulWidget {
  const MyAround({Key? key}) : super(key: key);

  @override
  State<MyAround> createState() => _MyAroundState();

}

class _MyAroundState extends State<MyAround> {
  final List<String> _valueList = [
    '비전1동',
    '죽백동',
    '소사벌',
    '동일동',
  ];
  String _selectedValue = '비전1동';

  Widget selectWiget() {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemCount: 17,
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

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: DropdownButton(
              value: _selectedValue,
              dropdownColor: const Color(0xFF1C1B1E),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              underline: Container(),
              items: _valueList.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              }),
          actions: [
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            selectWiget(),
          ],
        ),
        backgroundColor: Color(0xFF1C1B1E),
      );
    }
  }

