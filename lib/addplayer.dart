// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'dart:html';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

//File pickedImage;

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final titleController = TextEditingController();
  String text = "Spieler";

  void _setText() {
    setState(() {
      text = titleController.text;
    });
  }

  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Title(
          color: Colors.white,
          child: const Text(
            "Säufer Hinzufügen",
            style: TextStyle(
                color: Colors.white,
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                decoration: TextDecoration.underline,
                decorationThickness: 1.5),
          ),
        ),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      )),
                  width: MediaQuery.of(context).size.width - 230,
                  child: TextField(
                    onChanged: () {},
                    controller: titleController,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Name",
                        hintStyle: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial')),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child:
                      ElevatedButton(onPressed: _setText, child: Text("Save")),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50.0)),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: _width,
                height: 60.0,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    //border: Border.all(),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Zustand von $text',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'Arial'),
                    ),
                    const FaIcon(FontAwesomeIcons.arrowDown,
                        size: 30.0, color: Colors.white),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
