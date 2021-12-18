import 'dart:io';

import 'package:flutter/material.dart';
import "package:image_picker/image_picker.dart";
import "package:path/path.dart" as path;
import "package:path"

class Imageinput extends StatefulWidget {
  const Imageinput({Key? key}) : super(key: key);

  @override
  _ImageinputState createState() => _ImageinputState();
}

class _ImageinputState extends State<Imageinput> {
  File? _storedImage;

  Future<void>_takePicture() async {
     final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600);
      setState((){
        _storedImage=File(imageFile!.path);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: _storedImage != null
              ? Image.file(_storedImage!,
                  fit: BoxFit.cover, width: double.infinity)
              : const Text("No Image Taken", textAlign: TextAlign.center),
          alignment: Alignment.center,
        ),
        const SizedBox(width: 10),
        Expanded(
            child: TextButton.icon(
          icon: const Icon(Icons.camera),
          label: const Text("Take Picture"),
          onPressed: _takePicture,
        )),
      ],
    );
  }
}
