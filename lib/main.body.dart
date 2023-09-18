import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGridView.countBuilder(
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        crossAxisCount: 10,
        itemCount: itemList.length,
        itemBuilder: (context, index) => _cardBuilder(context, index),
        staggeredTileBuilder: (index) => StaggeredTile.count(
          2,
          index % 5 == 0 ? 4 : 1,
        ),
      ),
    );
  }

  Widget _cardBuilder(BuildContext context, int index) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              itemList[index],
            ),
          ),
        ),
      ),
    );
  }
}

const imgRoot = "assets/images";

const vidRoot = "assets/videos";

List<String> itemList = [
  '$imgRoot/1.jpg',
  '$imgRoot/2.png',
  '$imgRoot/3.jpg',
  '$imgRoot/4.jpg',
  '$imgRoot/5.jpg',
];

List<String> vidList = [
  '$vidRoot/1.mp4',
  '$vidRoot/2.mp4',
];
