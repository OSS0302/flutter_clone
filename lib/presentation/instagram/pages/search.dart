import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_search.dart';

class searchFocus extends StatefulWidget {
  const searchFocus({Key? key}) : super(key: key);

  @override
  State<searchFocus> createState() => _searchFocusState();
}

class _searchFocusState extends State<searchFocus>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }
  Widget _appbar (){
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: const Color(0xffefefef),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        hintText: '검색',
        suffixIcon: GestureDetector(
          child: const Icon(
            Icons.cancel,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  // 탭 메뉴
  PreferredSizeWidget _tabMenu(){
    return PreferredSize(
      preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      child: Container(
          height: AppBar().preferredSize.height,
          width: Size.infinite.width,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xffe4e4e4)))
          ),
          child: TabBar(
            indicatorColor: Colors.black87,
            controller: _tabController,
            tabs: const [
              Text(
                '추천',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                '계정',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                '릴스',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                '인기',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                '오디오',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),Text(
                '장소',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          )),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        titleSpacing: 0,
        centerTitle: false,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: _appbar(),
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffefefef),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text(
              '취소',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
        bottom:  _tabMenu(),
      ),

      body: SafeArea(
        child: Column(
          children: [
            //_tapMeun(),
          ],
        ),
      ),
    );
  }
}
