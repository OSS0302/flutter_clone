import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/instagram/instram_bottom_home_screen.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_home.dart';
import 'package:flutter_clone/presentation/instagram/pages/instagram_search.dart';

class searchFocus extends StatefulWidget {
  const searchFocus({Key? key}) : super(key: key);

  @override
  State<searchFocus> createState() => _searchFocusState();
}

Widget _appbar(BuildContext context) {
  return SafeArea(
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: const Color(0xffefefef),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
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
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xffefefef),
            ),
          ),
          onPressed: () {

            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  Search()));
          },
          child: const Text(
            '취소',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}

class _searchFocusState extends State<searchFocus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appbar(context),
            const Divider(
              color: Colors.grey,
            ),

          ],
        ),
      ),
    );
  }
}
