import 'package:flutter/material.dart';

import '../../constant.dart';

class AddVideo extends StatelessWidget {
  const AddVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            width: 190,
            decoration: BoxDecoration(color: buttonColor),
            child: const Center(
              child: Text(
                "Add Video",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
