import '../../../../constants/constants.dart';
import 'package:flutter/material.dart';

class GridTile_ extends StatelessWidget {
  GridTile_({
    super.key,
  });

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Image.asset("lib/assets/images/tooth.png"),
          ),
          SizedBox(
            height: displaySize.height * 0.016,
          ),
          const Text("Ortodonzia")
        ],
      ),
    );
  }
}
