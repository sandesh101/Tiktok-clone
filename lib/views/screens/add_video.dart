import 'package:flutter/material.dart';

import '../../constant.dart';

class AddVideo extends StatelessWidget {
  const AddVideo({Key? key}) : super(key: key);

  showOptionDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          SimpleDialogOption(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.image),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Gallery",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.camera),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Camera",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.cancel),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => showOptionDialog(context),
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
