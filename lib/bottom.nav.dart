import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int activeIndex = 0;
  void setActiveIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buttonBuilder(context, CupertinoIcons.home, 0),
            _buttonBuilder(context, CupertinoIcons.search, 1),
            _buttonBuilder(context, Icons.add_box_outlined, 2),
            _buttonBuilder(context, Icons.play_arrow_outlined, 3),
            _buttonBuilder(context, CupertinoIcons.person_crop_circle, 4),
          ],
        ),
      ),
    );
  }

  Widget _buttonBuilder(BuildContext context, IconData icon, int index) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return SizedBox(
          height: 60,
          child: Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setActiveIndex(index);
                },
                icon: Icon(icon),
                splashRadius: 30,
                iconSize: 35,
              ),
              if (activeIndex == index)
                Positioned(
                  bottom: 0,
                  child: Icon(
                    Icons.circle, // Change this to your desired icon
                    color: Theme.of(context).primaryColor,
                    size: 8,
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}
