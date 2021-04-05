import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

LoadImageFromGalleryState pageState;

class LoadImageFromGallery extends StatefulWidget {
  @override
  LoadImageFromGalleryState createState() {
    pageState = LoadImageFromGalleryState();
    return pageState;
  }
}

class LoadImageFromGalleryState extends State<LoadImageFromGallery> {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              height: 300,
              child: (_image != null) ? Image.file(_image) : Placeholder(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Gallery"),
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                ),
                RaisedButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  child: Text("Camera"),
                  onPressed: () {
                    getImage(ImageSource.camera);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void getImage(ImageSource source) async {
    print("getImageFromGallery");
    var image = await ImagePicker.pickImage(source: source);

    setState(() {
      _image = image;
    });
  }
}