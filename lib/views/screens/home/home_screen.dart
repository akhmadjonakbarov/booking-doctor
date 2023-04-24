import '../../../constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: displaySize.width * 0.03,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                SafeArea(
                  child: Header(),
                ),
                SizedBox(
                  height: displaySize.height * 0.01,
                ),
                Container(
                  decoration: const BoxDecoration(),
                  height: displaySize.height * 0.13,
                  child: ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: displaySize.width * 0.01,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryTile();
                    },
                  ),
                ),
                GridSystem()
              ],
            ),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final bool isSelected;
  CategoryTile({
    this.isSelected = false,
    super.key,
  });

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      width: displaySize.width * 0.25,
      height: displaySize.height * 0.9,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(6)),
          ),
          SizedBox(
            height: displaySize.height * 0.03,
          ),
          const Text("Ortodonzia"),
        ],
      ),
    );
  }
}
