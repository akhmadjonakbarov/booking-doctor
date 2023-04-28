import '../../../constants/constants.dart';
import '../home/widgets/widgets.dart';
import '../../widgets/box_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class BeforeAfter extends StatefulWidget {
  BeforeAfter({super.key});

  @override
  State<BeforeAfter> createState() => _BeforeAfterState();
}

class _BeforeAfterState extends State<BeforeAfter> {
  late Size displaySize;

  @override
  void didChangeDependencies() {
    displaySize = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(child: _title(title: "Before")),
                Container(
                  decoration: const BoxDecoration(),
                  height: 200,
                  child: ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: displaySize.width * 0.05,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BoxTile(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Container(
                                  child: BoxTile(),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: displaySize.height * 0.04,
          ),
          Container(
            decoration: const BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(title: "After"),
                Container(
                  decoration: const BoxDecoration(),
                  height: 200,
                  child: ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: displaySize.width * 0.05,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BoxTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          _title(
            title: "Process",
            align: TextAlign.center,
          ),
          Expanded(
            child: GridView.builder(
              // shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: displaySize.width * 0.03,
                mainAxisSpacing: displaySize.height * 0.02,
                childAspectRatio: displaySize.height * 0.001,
              ),
              itemBuilder: (context, index) {
                return BoxTile();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _title({required String title, TextAlign? align}) {
    return Text(
      title,
      textAlign: align != null ? align : null,
      style: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: mainColor,
      ),
    );
  }
}
