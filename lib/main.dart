import 'package:flutter/material.dart';
import 'components/DesktopComponent/desktop.dart';
import 'components/MobileComponent/mobile.dart';


void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1100) {
            return desktop();
          } else {
            return mobile();
          }
        },
      ),
    );
  }
}
