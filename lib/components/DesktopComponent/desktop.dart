import 'package:flutter/material.dart';
import 'package:flutter_portfolio_template/components/Description/description.dart';
import 'package:flutter_portfolio_template/components/Profile/profile.dart';

Widget desktop() {
  return Container(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Flexible(flex: 1, child: profile()),
            Flexible(flex: 3, child: description()),
          ],
        ),
      ),
    ),
  );
}
