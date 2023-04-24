import 'package:flutter/material.dart';

import './widgets.dart';

class GridSystem extends StatelessWidget {
  GridSystem({
    super.key,
  });

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: displaySize.width * 0.03,
          mainAxisSpacing: displaySize.height * 0.02,
          childAspectRatio: displaySize.height * 0.001,
        ),
        itemBuilder: (context, index) {
          return GridTile_();
        },
      ),
    );
  }
}
