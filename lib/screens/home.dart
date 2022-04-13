import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls/calls.dart';
import 'package:whatsapp_ui/screens/chats/chats.dart';
import 'package:whatsapp_ui/screens/status/status.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth / 16;
    double yourWidth = (orjWidth - cameraWidth) / 5;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 32, 44, 51),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Color(0xFF8696a0),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox.fromSize(
              size: Size.fromRadius(15),
              child: FittedBox(
                child: Icon(
                  Icons.search,
                  color: Color(0xFF8696a0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox.fromSize(
              size: Size.fromRadius(15),
              child: FittedBox(
                child: Icon(
                  Icons.more_vert,
                  color: Color(0xFF8696a0),
                ),
              ),
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 10,
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 32, 44, 51),
            bottom: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(
                  horizontal: (orjWidth - (cameraWidth + yourWidth * 3)) / 8.5),
              labelColor: Color(0xFF00a884),
              unselectedLabelColor: Color(0xFF8696a0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: Color(0xFF00a884)),
              ),
              tabs: [
                Container(
                  width: cameraWidth,
                  height: 45,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Container(
                  width: yourWidth,
                  height: 45,
                  alignment: Alignment.center,
                  child: Text(
                    "CHATS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: yourWidth,
                  height: 45,
                  alignment: Alignment.center,
                  child: Text(
                    "STATUS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: yourWidth,
                  height: 45,
                  alignment: Alignment.center,
                  child: Text(
                    "CALLS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: const [
            Center(
              child: Text('Tab 1'),
            ),
            Chats(),
            Status(),
            Calls(),
          ]),
        ),
      ),
    );
  }
}
