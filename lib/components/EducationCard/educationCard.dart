import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationCard extends StatelessWidget {
  EducationCard({
    required this.cardTextStyleHeading,
    required this.cardTextStyleDescription,
    required this.cardTextStyleYear,
    required this.heading,
    required this.description,
    required this.year,
  });

  final TextStyle cardTextStyleHeading;
  final TextStyle cardTextStyleDescription;
  final TextStyle cardTextStyleYear;
  final String heading;
  final String description;
  final String year;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      child: InkWell(
        splashColor: Colors.pink.withAlpha(30),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.center,
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    heading,
                    style: GoogleFonts.poppins(
                      textStyle: cardTextStyleHeading,
                    ),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.poppins(
                      textStyle: cardTextStyleDescription,
                    ),
                  )
                ],
              ),
              Text(
                year,
                style: GoogleFonts.poppins(textStyle: cardTextStyleYear),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
