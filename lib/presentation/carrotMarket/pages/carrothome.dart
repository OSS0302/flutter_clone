import 'package:flutter/cupertino.dart';
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
    int inquiry = 0,
    int messageBox = 0,
    int likeBox = 0,
  }) {
    double widthHeight = MediaQuery.of(context).size.height * 0.13;
    return SizedBox(
      height: widthHeight,
      width: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.4,
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
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
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          inquiry > 0
                              ? const Icon(
                                  Icons.mail_outline,
                                  color: Colors.white,
                                )
                              : Container(),
                          inquiry > 0
                              ? Text(
                                  inquiry.toString(),
                                  style: const TextStyle(color: Colors.white),
                                )
                              : Container(),
                          messageBox > 0
                              ? const Icon(
                                  CupertinoIcons.chat_bubble_2,
                                  color: Colors.white,
                                )
                              : Container(),
                          messageBox > 0
                              ? Text(
                                  messageBox.toString(),
                                  style: const TextStyle(color: Colors.white),
                                )
                              : Container(),
                          likeBox > 0
                              ? const Icon(
                                  CupertinoIcons.heart,
                                  color: Colors.white,
                                )
                              : Container(),
                          likeBox > 0
                              ? Text(
                                  likeBox.toString(),
                                  style: const TextStyle(color: Colors.white),
                                )
                              : Container(),
                          const SizedBox(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _button() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add,size: 24,),
            label: const Text('글쓰기',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
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
      body: Stack(
        children: [
          ListView(
            children: [
              _tileList(
                  imagePath: 'assets/images/carrotMarket/pt.jpeg',
                  title: '올웨이즈',
                  titleTime: '용이동 1일전',
                  price: '1000원',
                  messageBox: 4,
                  likeBox: 4),
              const SizedBox(
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
              _tileList(
                  imagePath: 'assets/images/carrotMarket/pt.jpeg',
                  title: '올웨이즈',
                  titleTime: '용이동 1일전',
                  price: '1000원',
                  inquiry: 3,
                  messageBox: 4,
                  likeBox: 4),
              const SizedBox(
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
              _tileList(
                  imagePath: 'assets/images/carrotMarket/pt.jpeg',
                  title: '올웨이즈',
                  titleTime: '용이동 1일전',
                  price: '51000원',
                  inquiry: 4,
                  messageBox: 5,
                  likeBox: 4),
              const SizedBox(
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
              _tileList(
                  imagePath: 'assets/images/carrotMarket/pt.jpeg',
                  title: '올웨이즈',
                  titleTime: '용이동 1일전',
                  price: '51000원',
                  inquiry: 4,
                  messageBox: 5,
                  likeBox: 4),
              const SizedBox(
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
              _tileList(
                  imagePath: 'assets/images/carrotMarket/pt.jpeg',
                  title: '올웨이즈',
                  titleTime: '용이동 1일전',
                  price: '51000원',
                  inquiry: 4,
                  messageBox: 5,
                  likeBox: 4),
              const SizedBox(
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
              _tileList(
                  imagePath: 'assets/images/carrotMarket/pt.jpeg',
                  title: '올웨이즈',
                  titleTime: '용이동 1일전',
                  price: '51000원',
                  inquiry: 4,
                  messageBox: 5,
                  likeBox: 4),
              const SizedBox(
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
            ],
          ),
          _buttom(),
        ],
      ),
      backgroundColor: const Color(0xFF1C1B1E),
    );
  }
}
