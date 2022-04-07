// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'addplayer.dart';
import 'settings.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width - 30;
    //var _height = MediaQuery.of(context).size.height - 30;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Title(
          color: Colors.orange,
          child: const Center(
            child: Text(
              "Ultimate Sauf",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50.0,
                  color: Colors.orange,
                  fontFamily: 'Arial',
                  decoration: TextDecoration.underline,
                  decorationThickness: 1.50),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddUser()),
                    );
                  },
                  child: Container(
                    width: _width,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        //border: Border.all(),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        FaIcon(FontAwesomeIcons.userPlus,
                            size: 30.0, color: Colors.white),
                        Text(
                          "Säufer Hinzufügen",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: 'Arial'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 100.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: Container(
                    width: _width,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        //border: Border.all(),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        FaIcon(FontAwesomeIcons.gear,
                            size: 30.0, color: Colors.white),
                        Text(
                          "Game Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: 'Arial'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 100.0)),
            Stack(
              fit: StackFit.loose,
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange),
                ),
                const FaIcon(
                  FontAwesomeIcons.play,
                  size: 300.0,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
