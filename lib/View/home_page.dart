import 'package:authpages/Ui%20Kit/ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: MyColors.mainColor1, size: 30),
          toolbarHeight: 75,
          backgroundColor: MyColors.backgroundColor,
          // automaticallyImplyLeading: false,
          title: Text(
            "lpy.",
            style: TextStyle(
                fontSize: 30,
                color: MyColors.mainColor1,
                fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(
            // backgroundColor: MyColors.mainColor1,
            ),
        drawerDragStartBehavior: DragStartBehavior.down,
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
