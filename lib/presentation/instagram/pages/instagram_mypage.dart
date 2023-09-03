import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        leadingWidth: 0,
        leading: IconButton(

          onPressed: () {},
          icon: Icon(Icons.lock_outline_rounded),
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const Row(
            children: [
              Text(
                'oss0302',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
            ],
          ),
        ),

        actions: [
           ImageData(IconsPath.uploadIcon),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: ImageData(IconsPath.menuIcon),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
