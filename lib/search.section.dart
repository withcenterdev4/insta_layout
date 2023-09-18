import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).shadowColor.withOpacity(.4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: const Icon(Icons.search),
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Theme.of(context).hintColor,
          ),
        ),
      ),
    );
  }
}
