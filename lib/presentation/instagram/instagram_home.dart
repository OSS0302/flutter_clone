import 'package:flutter/material.dart';
import 'package:flutter_clone/presentation/components/image_data.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(IconsPath.logo,
          width: MediaQuery.of(context).size.height * 0.5,),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(IconsPath.reelsOff,
              width: MediaQuery.of(context).size.height * 0.08),
            ),
          ),GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ImageData(IconsPath.directMessage,
              width: MediaQuery.of(context).size.height * 0.08),
            ),
          )
        ],
      ),
    );
  }
}
