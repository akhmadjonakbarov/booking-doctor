import '../../constants/constants.dart';
import 'package:flutter/material.dart';

class BoxTile extends StatelessWidget {
  final Function()? onTap;
  BoxTile({super.key, this.onTap});

  late Size displaySize;

  @override
  Widget build(BuildContext context) {
    displaySize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: displaySize.width * 0.3,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(27),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
      ),
    );
  }
}
