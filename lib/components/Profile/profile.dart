import 'package:flutter/material.dart';

Widget profile() {
  return Container(
    padding: EdgeInsets.fromLTRB(32, 64, 32, 0),
    color: Colors.black,
    child: ListView(
      // mainAxisSize: MainAxisSize.max,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          maxRadius: 150,
          backgroundImage: AssetImage("memoji.png"),
          // radius: 150,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "Skills",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 300,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Skill('CSS'),
              Skill('HTML'),
              Skill('Javascript'),
              Skill("Jquery"),
              Skill("Bootstrap"),
              Skill("Firebase"),
              Skill("SASS"),
              Skill("Swift"),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 300,
          child: Wrap(
            children: [
              SocialButton(),
              SocialButton(),
              SocialButton(),
              SocialButton(),
            ],
          ),
        )
      ],
    ),
  );
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 32,
      color: Colors.white,
      icon: Icon(
        Icons.mail,
        color: Colors.pink,
      ),
      onPressed: () {},
    );
  }
}

class Skill extends StatelessWidget {
  Skill(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
          color: Colors.pink,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
