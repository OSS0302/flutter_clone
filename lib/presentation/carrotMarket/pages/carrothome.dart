import 'package:flutter/material.dart';

class CarrotHome extends StatefulWidget {
  const CarrotHome({Key? key}) : super(key: key);

  @override
  State<CarrotHome> createState() => _CarrotHomeState();
}

class _CarrotHomeState extends State<CarrotHome> {
  final List<String> _valueList = [
    '비전1동',
    '죽백동',
    '소사벌',
    '동일동',
  ];
  String _selectedValue = '비전1동';

  Widget _tileList({
    String? imagePath,
    String? title,
    String? titleTime,
    String? price,
    int? inquiry = 0,
    int? messageBox = 0,
    int? likeBox = 0,
  }) {
    double widthHeight = MediaQuery.of(context).size.height * 0.15;
    return SizedBox(
      height: widthHeight,
      width: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.cyan,
                image: DecorationImage(
                  image: AssetImage(
                      imagePath ?? 'assets/images/carrotMarket/pt.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8),
                child: Text(
                  title ?? ('올웨이즈 양도권 '),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8),
                child: Text(
                  titleTime ?? '용이동 8일전',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  price ?? '300000원',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
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
          _tileList(),
        ],
      ),
      backgroundColor: const Color(0xFF1C1B1E),
    );
  }
}
