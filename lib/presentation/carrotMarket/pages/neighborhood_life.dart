import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/carrotMarket/components/carrot_avatar_widget.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';

class NeighborhoodLife extends StatefulWidget {
  const NeighborhoodLife({Key? key}) : super(key: key);

  @override
  State<NeighborhoodLife> createState() => _NeighborhoodLifeState();
}

class _NeighborhoodLifeState extends State<NeighborhoodLife> {
  final List<String> _valueList = [
    '비전1동',
    '죽백동',
    '소사벌',
    '동일동',
  ];
  String _selectedValue = '비전1동';

  // bodyTop Stroy board
  Widget _StroyBoard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicHeight(
        child: Row(
          children: [
            _ClassStroyBoard(context),
            VerticalDivider(thickness: 1, indent: 4, color: Colors.grey[500]),
            ...List.generate(
                10,
                (index) => CarrotAvatarWidget(
                      type: CarrotAvatarType.storyBoardAvatar,
                      imagePath:
                          "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/280714442_973301870035556_6298617763728239387_n.jpg?stp=dst-jpg_s160x160&_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=o2fTvbHP6NAAX-5kcaz&_nc_ht=scontent-gmp1-1.cdninstagram.com&oh=00_AfD0vsDKrnuGc_SKLSdl8qHPSfGqYo7cwA0vm-hTihp48A&oe=64ED7E35",
                    )),
          ],
        ),
      ),
    );
  }

  //myStroyBoard()
  Widget _ClassStroyBoard(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.17,
            height: MediaQuery.of(context).size.height * 0.088,
            child: ImageData(IconsPath.myclass),
            color: Color(0xFF1C1B1E),
          ),
        ),
        Text(
          '모임 둘러보기 ',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

// _subject
  Widget _subject(BuildContext context, String title) {
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 24,
          ),
          label: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF1C1B1E),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ],
    );
  } // _subject

  Widget _subjectanother(BuildContext context, String title) {
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.local_fire_department_outlined,
            size: 24,
          ),
          label: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF1C1B1E),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ],
    );
  }

  // _subject
  Widget _anothersubject(BuildContext context, String title) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF1C1B1E),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ],
    );
  }

  // _mianBoard()
  Widget _mianBoard({
    String? subjectTitile,
    String? popularTitles,
    String? title,
    String? content,
    String? imagePath,
    String? boardTime,
    int count = 0,
    int groupCount = 0,
    int chattingCount = 0,
    int goodCount = 0,
  }) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.height * 0.03,
                      color: Colors.cyan,
                      child: Center(
                        child: Text(
                          popularTitles ?? ('인기'),
                          style: TextStyle(color: Colors.cyanAccent),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.black26,
                        child: Center(
                          child: Text(
                            subjectTitile ?? ('주제'),
                            style: TextStyle(
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  Flexible(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.17,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(imagePath ??
                                'assets/images/carrotMarket/pt.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
             Text(
              title ?? '지산동 모임',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),

          Text(
            content ?? '안녕하세요 심심하셨거나 친구가없거나 혼술하지마시구',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            boardTime ?? '지산동 6시간 전',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),

        ],

    );
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
                Icons.account_circle_outlined,
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
          _StroyBoard(),
          const SizedBox(
            child: Divider(
              thickness: 10,
              color: Colors.black,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _subject(context, '주제'),
                SizedBox(
                  width: 5,
                ),
                _subjectanother(context, '인기글'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '공공소식'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '동네맛집'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '동네질문'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '동네소식'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '생활정보'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '실기산날씨'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '취미생활'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '일상'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '분실/실종센터'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '동네사건사고'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '해주세요'),
                SizedBox(
                  width: 5,
                ),
                _anothersubject(context, '동네사진'),
              ],
            ),
          ),
          const SizedBox(
            child: Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          ),
          _mianBoard(),
        ],
      ),
      backgroundColor: const Color(0xFF1C1B1E),
    );
  }
}
