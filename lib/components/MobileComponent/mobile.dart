import 'package:flutter/material.dart';
import 'package:flutter_portfolio_template/components/DescriptionHeading/heading.dart';
import 'package:flutter_portfolio_template/components/EducationCard/educationCard.dart';
import 'package:google_fonts/google_fonts.dart';


Widget mobile() {
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
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        splashColor: Colors.pink.withAlpha(20),
        child: Icon(
          Icons.info,
        ),
        onPressed: () {},
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 900,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Heading(
                      "About",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "I am Neeraj, currently a Junior Student at Chitkara University.",
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
                      description: "Current CGPA : 9.6",
                      year: "2019",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    EducationCard(
                      cardTextStyleHeading: cardTextStyleHeading,
                      cardTextStyleDescription: cardTextStyleDescription,
                      cardTextStyleYear: cardTextStyleYear,
                      heading: "Lord Rama Public School",
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
                    ProjectCardMobile(),
                    SizedBox(
                      height: 20,
                    ),
                    ProjectCardMobile(),
                    SizedBox(
                      height: 20,
                    ),
                    ProjectCardMobile()
                    // Wrap(
                    //   direction: Axis.vertical,
                    //   spacing: 20,
                    //   children: [
                    //     ProjectCardMobile(cardTextStyleHeading),
                    //     ProjectCardMobile(cardTextStyleHeading),
                    //     ProjectCardMobile(cardTextStyleHeading)
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ProjectCardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      child: InkWell(
        splashColor: Colors.pink.withAlpha(30),
        onTap: () {},
        child: SizedBox(
          // width: 300,
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/65647625?v=4`"),
                  ),
                ),
              ),
              Text(
                'A card that can be tapped',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
