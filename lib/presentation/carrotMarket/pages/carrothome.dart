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

  Widget _StoryBoard(){
    return Row(
      children: [
        Container(),
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
          _StoryBoard(),
        ],
      ),
      backgroundColor: const Color(0xFF1C1B1E),
    );
  }
}
