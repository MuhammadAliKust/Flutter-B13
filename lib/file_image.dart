import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileImageView extends StatefulWidget {
  FileImageView({super.key});

  @override
  State<FileImageView> createState() => _FileImageViewState();
}

class _FileImageViewState extends State<FileImageView> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File Image"),
      ),
      body: image == null
          ? ElevatedButton(
              onPressed: () {
                ImagePicker().pickImage(source: ImageSource.gallery).then((val) {
                  image = File(val!.path);
                  setState(() {});
                });
              },
              child: Text("Pick  Image"))
          : Image.file(image!),
    );
  }
}
