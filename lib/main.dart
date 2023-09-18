import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_layout/main.body.dart';
import 'package:instagram_layout/search.section.dart';

import 'bottom.nav.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        indicatorColor: Colors.grey,
        primaryColorLight: Colors.white,
        shadowColor: Colors.grey.shade400,
        hintColor: Colors.grey.shade600,
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColorLight.withOpacity(0),
          leadingWidth: 430,
          toolbarHeight: 60,
          leading: const Padding(
            padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
            child: SearchSection(),
          ),
        ),
        body: const MainBody(),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}
