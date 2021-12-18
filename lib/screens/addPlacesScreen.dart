// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:places/widgets/imageinput.dart';

class AddPlacesScreen extends StatefulWidget {
  static const routeName = "/addplace";

  @override
  _AddPlacesScreenState createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends State<AddPlacesScreen> {
  final _titleControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Place'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: "Title",

                    ),
                    controller: _titleControler,
                  ),
                 const SizedBox(height:10),
                  const Imageinput(),
                ],
              ),
            ),
          )),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("Add place"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
