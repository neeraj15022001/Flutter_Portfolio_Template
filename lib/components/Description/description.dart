import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "../DescriptionHeading/heading.dart";
import "../EducationCard/educationCard.dart";

Widget description() {
  final TextStyle style = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  final TextStyle cardTextStyleHeading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  final TextStyle cardTextStyleDescription = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  final TextStyle cardTextStyleYear = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.pink,
  );
  return Container(
    padding: EdgeInsets.all(64.0),
    color: Colors.black,
    child: ListView(
      children: [
        Heading(
          "About",
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "I Am Neeraj, Currently A Junior Student At Chitkara University.",
          style: GoogleFonts.poppins(
            textStyle: style,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "My Primary Field Of Interest Is Web Development, IOS And UI/UX Designing.",
          style: GoogleFonts.poppins(
            textStyle: style,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "I Love Making Converting Ideas Into Reality And Always Seek To Learn New Things.",
          style: GoogleFonts.poppins(
            textStyle: style,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Heading("Education"),
        SizedBox(
          height: 30,
        ),
        EducationCard(
          cardTextStyleHeading: cardTextStyleHeading,
          cardTextStyleDescription: cardTextStyleDescription,
          cardTextStyleYear: cardTextStyleYear,
          heading: "Chitkara University",
          description: "Current CGPA : 9.7",
          year: "2019",
        ),
        SizedBox(
          height: 20,
        ),
        EducationCard(
          cardTextStyleHeading: cardTextStyleHeading,
          cardTextStyleDescription: cardTextStyleDescription,
          cardTextStyleYear: cardTextStyleYear,
          heading: "Gobindgarh Public School",
          description: "CGPA : 10",
          year: "2017",
        ),
        SizedBox(
          height: 50,
        ),
        Heading("Projects"),
        SizedBox(
          height: 40,
        ),
        Wrap(
          spacing: 20,
          children: [
            ProjectCard(cardTextStyleHeading),
            ProjectCard(cardTextStyleHeading),
            ProjectCard(cardTextStyleHeading)
          ],
        )
      ],
    ),
  );
}

class ProjectCard extends StatelessWidget {
  ProjectCard(this.cardStyleHeading);
  final TextStyle cardStyleHeading;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white12,
      child: InkWell(
        splashColor: Colors.pink.withAlpha(30),
        onTap: () {},
        child: SizedBox(
          height: 300,
          width: 250,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("memoji.png"),
                  ),
                ),
              ),
              Text(
                "Project Name",
                style: GoogleFonts.poppins(textStyle: cardStyleHeading),
              )
            ],
          ),
        ),
      ),
    );
  }
}
