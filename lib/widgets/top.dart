import 'package:flutter/material.dart';
import 'package:streamnow/color.dart';
// import 'package:streamnow/color.dart';
import 'package:streamnow/widgets/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: appColors.Surface94,
        width: double.infinity,
        height: 60,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SVG(svgPath: 'lib/svg/topIcon.svg'),
            SizedBox(
              width: 10,
            ),
            SVG(svgPath: 'lib/svg/nameIcon.svg')
          ],
        ),
      ),
    );
  }
}
