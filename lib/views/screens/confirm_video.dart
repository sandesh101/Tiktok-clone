import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tiktok_clone/views/widgets/text_form_field.dart';
import 'package:video_player/video_player.dart';

class ConfirmVideo extends StatefulWidget {
  const ConfirmVideo(
      {Key? key, required this.videoFile, required this.videoPath})
      : super(key: key);
  final File videoFile;

  final String videoPath;

  @override
  State<ConfirmVideo> createState() => _ConfirmVideoState();
}

class _ConfirmVideoState extends State<ConfirmVideo> {
  late VideoPlayerController controller;
  TextEditingController songController = TextEditingController();
  TextEditingController captionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      controller = VideoPlayerController.file(widget.videoFile);
    });

    controller.initialize();
    controller.play();
    controller.setVolume(1);
    controller.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width - 20,
                      child: InputField(
                        controller: songController,
                        labelText: "Song Name",
                        icon: Icons.music_note,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width - 20,
                      child: InputField(
                        controller: captionController,
                        labelText: "Caption",
                        icon: Icons.closed_caption,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Share",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
