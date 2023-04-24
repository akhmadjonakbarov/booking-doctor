import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    super.key,
  });

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: displaySize.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              print("Home");
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.house,
                  ),
                  Text("home")
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Home");
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.house,
                  ),
                  Text("home")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
