import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<List<int>> groupBox = [[], [], []];
  List<int>groupIndex = [0,0,0];


  @override
  void initState() {
    super.initState();
    for (var i = 0; i <100; i++) {

      var gi =groupIndex.indexOf(min<int>(groupIndex)!);
      var size = 1;
      if( gi != 1){
        size = Random().nextInt(100) % 2 == 0 ? 1 : 2;
      }
      if (i >= 90 && gi == groupIndex.indexOf(max<int>(groupIndex)!)) {
        break;
      }
      groupBox[gi].add(size);
      groupIndex[gi] += size;
    }

  }

// 바디
  Widget _body(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            groupBox.length,
            (index) => Expanded(
              child: Column(
                children: List.generate(groupBox[index].length , (jndex) => Container(
                    width: MediaQuery.of(context).size.height * 0.33 * groupBox[index][jndex],
                    height: MediaQuery.of(context).size.width * 0.33 * groupBox[index][jndex],
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                    ),
                  child: CachedNetworkImage(imageUrl: 'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-19/363233336_296568409535930_6371283386676776730_n.jpg?stp=dst-jpg_s160x160&_nc_cat=102&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=PXXzV5bVk3kAX-rj80c&_nc_ht=scontent-ssn1-1.cdninstagram.com&oh=00_AfCv0IeSXxyaTQ_33nn_EjQkHhBk6unrnvY5EJdDXIzxWg&oe=64F35F62',fit: BoxFit.cover,),
                  ),
              ).toList(),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appbar(),
            _body(context),
          ],
        ),
      ),
    );
  }
}

Widget _appbar() {
  return Row(
    children: [
      Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xffefefef),
          ),
          child: const Row(
            children: [
              Icon(Icons.search),
              Text(
                '검색 ',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff838383),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

//children: [
//
//   Expanded(
//     child: Column(
//       children: [
//         Container(
//           height: MediaQuery.of(context).size.height * 0.2,
//           color: Colors.blue,
//         ),
//       ],
//     ),
//   ),
//   Expanded(
//     child: Column(
//       children: [
//         Container(
//           height: MediaQuery.of(context).size.height * 0.2,
//           color: Colors.grey,
//         ),
//       ],
//     ),
//   ),
// ],
