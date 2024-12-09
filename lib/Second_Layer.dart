import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:wcc_app/main.dart';

///This file is the main page of each of the various paths where changes
///and things are added

const url =
    "https://hcas.nova.edu/degrees/masters/composition-rhetoric-digital-media.html";

///the index for the proffs
class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color.fromARGB(255, 3, 48, 126),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(),

              ///doing container lets you add padding to surrounding area
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Welcome From Conference Host',
                            style: fontheaderblack),
                        TextSpan(
                            text:
                                "\n\nDear Colleagues,\n\nWelcome to Memphis, TN and the lovely Guest House at Graceland.  Thank you for joining us for the 2023 Southeastern Writing Centers Association Conference.  It has been a long time coming!  Little did we know that when—in February 2020—we were talking about hosting the SWCA conference, those plans would be put on hold until 2023.  We could not be prouder to welcome you finally and to continue our collaboration with you in person.",
                            style: fontblack),
                        TextSpan(
                            text:
                                "\n\nThe SWCA conference has always been a special gathering.  By bringing together writing center directors, graduate student consultants, undergraduate student consultants, high school student consultants, professional consultants, and writing center staff, this conference paves a way for focusing on our important work from the aspects of multiple audiences and contexts.  We do this by adhering to a theme that points us toward current research we use for growth.  I am never disappointed in what I learn at an SWCA conference, and I am always sad to see the three days end.  Based on the proposals I’ve read, I believe this year will not be different.",
                            style: fontblack),
                        TextSpan(
                            text:
                                "\n\nThis year our theme is “Navigating the Rivers of Change,” where I   have asked you to use Memphis as inspiration.  As a place of resilience and survival, Memphis has a rhythm all on its own, a place that wants change, a place that keeps pushing forward, despite constant setbacks that hinder that progress.  I’ve asked you to think about how this mentality relates to what we do in our writing centers, focusing on our rhythms, our challenges, and ways we encounter setbacks that seemingly step in the way of much-needed progress.",
                            style: fontblack),
                        TextSpan(
                            text:
                                "\n\nThe session topics have risen to the task.  In this conference we will hear about multimodal work, cultural awareness, social and economic change, campus culture, multilingual work decolonization, power dynamics, safe spaces, inclusion, diversity, accessibility, standard language ideology, equitable practices, activism, neurodiversity, equity, justice, work and life balance, antiracist tutoring, unconscious bias, mental health, and many other topics that are rich for conversation in the context of writing center work.  Many of these are in the context of RAD scholarship, data analysis, and training that give avenues for continued conversation and collaboration.",
                            style: fontblack),
                        TextSpan(
                            text:
                                "\n\nThese topics are also rich kindling for wider application after we leave this place.  Writing centers have always been places of change; that’s a given.  Let’s dive in and talk about our navigation around those changes and how they open opportunities for more advocacy.  I look forward to hearing the buzz after our powerful sessions that will surely happen long after we’ve returned to our institutions.",
                            style: fontblack),
                        TextSpan(
                            text:
                                "\n\nI wish to thank all the helpers who have made this conference possible:",
                            style: fontblack),
                        TextSpan(
                            text:
                                "\n   •The CBU Writing and Communications Corner consultants have been both patient and focused for three years, always believing this conference would happen.     Please read my detailed acknowledgement page to see some blurbs about how these consultants have been my heroes during this whole process.\n   •The SWCA Board has been supportive throughout, understanding, offering advice, and making sure I had everything I needed.  The Board membership is listed on    one of the program links on the homepage.\n   •The Proposal Review Committee was a life saver for me, saving me countless hours and offering insight that helped with all aspects of programming.  This    committee membership is listed in a program homepage link as well.",
                            style: fontblack),
                        TextSpan(
                            text:
                                "This conference would not have happened if you had not come!  Thank you very much  for being here.  I  hope you enjoy the conference, learn a lot of things to take back to your institutions, and make connections with both old and new colleagues and friends.\n\nClayann Gilliam Panetta, 2023 SWCA Conference Host",
                            style: fontblack),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}

///second layer to 'Acknowledgments' from NavBar.dart; the main Acknowlegements page add stuff here
const fontheader = TextStyle(
    fontSize: 18.0,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 255, 255, 255));
const font = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 255, 255, 255));
const fonttwo = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255));

const fontblack =
    TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 8, 29, 195));
const fontheaderblack = TextStyle(
    fontSize: 22.0,

    ///: TextDecoration.underlin,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 32, 9, 209));
const subheader = TextStyle(
    fontSize: 18.0,

    ///: TextDecoration.underlin,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 23, 10, 202));

class AknowPage extends StatelessWidget {
  const AknowPage({super.key});

  ///function that works at the url
  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color.fromARGB(255, 3, 48, 126),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(children: [
                  RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(text: "Acknowledgements", style: fontheaderblack),
                    TextSpan(
                        text:
                            "\n\nThe 2023 SWCA conference would not have been possible without the contributions of the people below.  We offer our deepest thanks to: ",
                        style: fontblack),
                    TextSpan(
                        text:
                            "\n\n\n\nCBU Writing and Communications Corner Consultants:",
                        style: subheader),
                    TextSpan(
                        text:
                            "Hannah Rhode: Through a lot of diligence, Hannah talked to multiple Memphis excursion possibilities and helped us map out a plan we could share with conference attendees.  Her attention to detail and professionalism is admirable.\n\nAndy Molina Rodríguez: As one of the WCC work study students, Andy is always ready to stuff packets, run errands, make calls.  It’s the small things that make events a success, and Andy is the master of all those small things.\n\nLara Stearsman: As a work study student, Lara was always ready to do the ‘lil things she always is good at making happen.  As a Creative Writing major, she worked closely with the writing table and made executive decisions that made the table a creative idea.\n\nEthan Tatom:  Ethan’s tireless efforts in helping think through the Writing Table and Pronoun Table have made those two areas come to life and be the contribution we wanted them to be.  If you haven’t done so already, consider purchasing one of Ethan’s buttons (QR code on pronoun table).  A portion of the proceeds go to the programming necessities of Memphis Pride.\n\nJennifer Velazquez:  Jennifer is getting ready for law school, but this didn’t mean she didn’t help form much of the foundation of the conference.  She put together the beginning program, helped film our Memphis shorts, and provided support for us throughout the process.\n\nAstrid Zuniga: Astrid did all the legwork in getting us in touch with the band in the early days and helped us get the idea off the ground.  The band is great, but they would not be here without Astrid.\n\n",
                        style: fontblack),
                    TextSpan(text: "\n\nConference Interns:", style: subheader),
                    TextSpan(
                        text:
                            "\n\nSarah Abudalla: Sarah has been instrumental for a lot of small tasks that have been the glue to keep us together in the weeks before the conference.  From scoring some SWAG to making all our name tags, Sarah has been irreplaceable.\n\nAnna Grace Barnett:  Although late to the team, Anna Grace has stepped up and used her creative talents to bring the writing table to fruition.\n\nKirsten Cox:  As a Business major who is working on this internship as part of a Management course requirement, Kirsten has brought her course theory in management and applied it to our conference.  She is getting a great experience, but we are getting her talents and energy.\n\nSean Wyatt: As an English for Corporate Communications major working on this internship to earn credit for his Advanced Professional Communications course, Sean has been responsible for creating the awards slideshow and several other communicative projects.  After the conference, Sean will use his professional communications skills to help our WCC build a community writing center in Memphis.\n\n",
                        style: fontblack),
                    TextSpan(text: "\n\nCBU Faculty", style: subheader),
                    TextSpan(
                        text:
                            "\n\nSeveral CBU faculty have shown up to help us make the conference run more smoothly.  They are listed below:\n\nShima Farhesh, Assistant Professor  in Literature and Languages and Placement Coordinator for first year writing\nJacob Goessling, Assistant Professor in Literature and Languages and Director of CBU’s Sustainability Program\nKaren Golightly, Chair of Department of Literature and Languages at CBU\nBrother Alan Parham, Christian Brother and member of Campus Ministries staff.  Brother Alan conducts the WCC Journaling Workshop \nTawny LeBouef Tullia, Dean of the School of Arts ",
                        style: fontblack),
                    TextSpan(
                        text: "\n\n\n\nSomeone who deserves her own category:",
                        style: subheader),
                    TextSpan(
                        text:
                            "\n\nAriel Earnest, the former WCC assistant, who lost her assistant job during COVID, but felt so connected to the SWCA conference plans that she came back to join us and see the conference take place.  Ariel is  a rock star, and we are grateful for her constant participation.  And, folks, she is a civil engineer!",
                        style: fontblack),
                    TextSpan(
                        text: "\n\n\n\nGuest House Staff", style: subheader),
                    TextSpan(
                        text:
                            "\n\nWe are grateful for the Guest House staff who were patient with all our questions and ideas throughout this process, especially when it was their predecessors who originally formed our plans with us:\nDennis Norton, Guest House Event Coordinator\nJeffrey Bell, Guest House AV Coordinator",
                        style: fontblack),
                    TextSpan(
                        text: "\n\n\n\nConference Sponsors", style: subheader),
                    TextSpan(
                        text:
                            "\n\nNOVA Southeastern University’s M.A. program in composition, rhetoric, and digital media sponsored coffee breaks and purchased a table to advertise their programs.\nTwenty Six Design purchased and staffed a vendor table with information about WCONLINE\nWLN: A Journal of Writing Center Scholarship contributed information about getting published in this journal.",
                        style: fontblack),
                    TextSpan(
                        text:
                            "\n\n\n\nLocal on Main Restaurant in Downtown Memphis",
                        style: subheader),
                    TextSpan(
                        text:
                            "\n\nWhen asked to coordinate the Board dinner, Tim Quinn was willing to accommodate our dietary requests with no question.  His cooperative spirit made the process easier on all of us.",
                        style: fontblack),
                  ])),
                ]))));
  }
}

///Review Committee the looked over the specifications
///for this conference and confirmed the details.
class ReviewComitt extends StatelessWidget {
  const ReviewComitt({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color.fromARGB(255, 3, 48, 126),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(children: [
                  RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Proposal Review Committee",
                        style: fontheaderblack),
                    TextSpan(
                        text:
                            "\n\nKelle Alden, University of Tennessee at Martin\nJohn Bradley, Vanderbilt University\nThomas Cole, Southwest Tennessee Community College\nAriel Earnest, Christian Brothers University\nShima Farhesh, Christian Brothers University\nJames Hamby, Middle Tennessee State University\nClayann Gilliam Panetta, Christian Brothers University\nHannah Pitner, University of Memphis",
                        style: fontblack),
                  ]))
                ]))));
  }
}

///These are all the members of the SWC who
///are responsible for putting the conference
///together and hosted the event.
class SWCAmems extends StatelessWidget {
  const SWCAmems({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color.fromARGB(255, 3, 48, 126),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(children: [
                  RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "SWCA BOARD MEMBERS", style: fontheaderblack),
                    TextSpan(
                        text: "\n\n\n\nExecutive Board ", style: subheader),
                    TextSpan(
                        text:
                            "\n\nPresident: Brian McTague, Virginia Commonwealth University (2022-24) \nVice President/Incoming President: Candis Bond, Augusta University (2022-2024) \nImmediate-Past President: Janine Morris, Nova Southeastern University (2022-24) \nArchivist: Chelsea Murdock, Clemson University (2022-24) \nTreasurer: Brandy Ball Blake, Georgia Institute of Technology (2020-24) ",
                        style: fontblack),
                    TextSpan(text: "\n\n\n\nBoard Members ", style: subheader),
                    TextSpan(
                        text:
                            "\n\nSWCA-CARE Co-Chairs: Jennifer Smith Daniel, Queens University of Charlotte, and Karen Keaton Jackson, North Carolina Central University \nRepresentative-at-Large: Kem Roper, Athens State University (2022-2024) \nRepresentative at Large: Caitlin Kelly Georgia Institute of Technology (2022-2024) \nOutreach Coordinator: Jenny Koster, Piedmont Virginia Community College (2021-2023) \nDigital Content Developer (DCD): Eric Mason, Nova Southeastern University \nSouthern Discourse in the Center: A Journal of Multiliteracy and Innovation (SDC) Co-Editors: Devon Ralston, Winthrop University, and Scott Pleasant, Coastal Carolina University (2024) \nImmediate-Past SDC Editor: Karen Head, Georgia Institute of Technology \nCurrent Conference Chair: Clayann Gilliam Panetta, Christian Brothers University, Memphis, TN (2023) \nImmediate-Past Conference Chair: NSU WCC, Nova Southeastern University (2022)",
                        style: fontblack),
                    TextSpan(
                        text: "\n\n\n\nCommunity Representatives ",
                        style: subheader),
                    TextSpan(
                        text:
                            "\n\nCommunity College Representative: Jessica Newman, Jefferson Community and Technical College (2022-24) \nGraduate Student Representative: Brittny Byrom, Georgia State University (2022-24) \nHBCU Representative: LaKela Atkinson, East Carolina University (alumna of North Carolina Central University) (2021-23) \nSecondary School Representatives: Melissa C Daniels and Mia Tambellini, Deep Run High School (2021-2023)",
                        style: fontblack),
                    TextSpan(
                        text: "\n\n\n\nState Representatives ",
                        style: subheader),
                    TextSpan(
                        text:
                            "\n\nAlabama: Jaclyn Wells, University of Alabama at Birmingham (2022-24) \nFlorida: Billie Jo Dunaway, Daytona State College (2021-2023) \nGeorgia: Saurabh Anand, University of Georgia (2022-24) \nKentucky:  Amy Nichols, Berea College (2022-24) \nMississippi: Bethani C. England, Hinds Community College  (2022-2024) \nNorth Carolina: Maegan Mercer-Bourne, Wake Technical Community College (2021-2023) \nSouth Carolina: Deidre Garriott, University of South Carolina (2022-24)  \nTennessee:  James Hamby, Middle Tennessee State University (2022-2024)  \nVirginia: Lori Jacobson, William & Mary (2021-2023) ",
                        style: fontblack),
                  ]))
                ]))));
  }
}

///This is the "Schedule at a Glance,"
///This was used as a quick summary of the event
///that people could use to get around
///if they didn't need information for specific events
class QuickSched extends StatelessWidget {
  const QuickSched({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color.fromARGB(255, 3, 48, 126),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            RichText(
                text: const TextSpan(children: <TextSpan>[
              TextSpan(
                  text: "SWCA 2023 Conference Schedule at a Glance",
                  style: fontheaderblack),
              TextSpan(text: "\n\nWednesday, February 8th", style: subheader),
              TextSpan(
                  text:
                      "\n2:00-5:00 pm:\nCurrent Board Meeting (Ballroom A)\n\n6:00-8:00 pm:\nBoard Dinner",
                  style: fontblack),
              TextSpan(text: "\n\nThursday, February 9th ", style: subheader),
              TextSpan(
                  text:
                      "\n8:00 am-4:00 pm:\nRegistration and Information\n\n8:00-8:50 am:\nConcurrent Sessions A\n\n9:00-9:50 am:\nConcurrent Sessions B\n\n10:00-10:50 am:\nCoffee, Pastries, and Posters (Prefunction A and Ballroom A):\n\n11:00-11:50 am:\nConcurrent Sessions C\n\n12:00-2:00 pm:\nLunch on your own\n\n2:00-2:50 pm: \nConcurrent Sessions D\n\n3:00-3:50 pm:\nConcurrent Sessions E\n\n4:00-6:00 pm:\nOpening Reception (Ballroom A)",
                  style: fontblack),
              TextSpan(text: "\n\nFriday, February 10th ", style: subheader),
              TextSpan(
                  text:
                      "\n8:00 am-4:00 pm:\nRegistration and Infromation\n\n8:30-10:30 am:\nIncoming board meeting (Ballroom B)\n\n8:00-8:50 am:\nConcurrent Sessions F\n\n9:00-9:50 am:\nConcurrent Sessions G\n\n10:00-10:50 am:\nConcurrent Sessions H\n\n11:00 am-1:00 pm:\nKeynote Lunch (Ballroom A)\n\n2:00-2:50 pm:\nConcurrent Sessions I\n\n3:00-4:00 pm:\nState Networking Meetings\n\n4:00-6:00 pm:\nGrad School Mixer (Founder’s Room)",
                  style: fontblack),
              TextSpan(text: "\n\nSaturday, February 11th ", style: subheader),
              TextSpan(
                  text:
                      "\n8:00-8:50 am:\nConcurrent Sessions J\n\n9:00-9:50 am:\nConcurrent Sessions K\n\n10:00-10:50 am:\nCoffee (Prefunction A)\n\n11:00-11:50 am:\nConcurrent Sessions L\n\n12:00-12:50 pm:\nConcurrent Sessions M",
                  style: fontblack),
            ]))
          ]),
        )));
  }
}

const url2 = "https://southeasternwritingcenter.wildapricot.org/";
const url3 =
    "https://guesthousegraceland.com/wp-content/uploads/2016/05/Guesthouse-at-Graceland-Group-Fact-Sheet.pdf";

///second layer to 'Lunch" from DavBar.dart; main page add stuff ehre
class Links extends StatelessWidget {
  const Links({super.key});

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Useful Links Shown Below'),
        backgroundColor: const Color.fromARGB(255, 3, 48, 126),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                text: 'Southeastern Writing Center Association Website',
                style: fontheaderblack,
              )),
          ElevatedButton(
              child: const Text('Click Here!'),
              onPressed: () {
                launchURL(url2);
              }),
          const Padding(padding: EdgeInsets.only(top: 40)),
          RichText(
              text: const TextSpan(
            text: 'Graceland Gueshouse Property Map',
            style: fontheaderblack,
          )),
          ElevatedButton(
              child: const Text('Click Here!'),
              onPressed: () {
                launchURL(url3);
              }),
          const Padding(padding: EdgeInsets.only(top: 40)),
          RichText(
              text: const TextSpan(
            text: 'NSU Flordia: Halmos College of Arts and Sciences',
            style: fontheaderblack,
          )),
          ElevatedButton(
              child: const Text('Click Here!'),
              onPressed: () {
                launchURL(url);
              }),
        ]),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}

///Holds the Ads for the event
class Ads extends StatelessWidget {
  const Ads({super.key});

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nova Southeastern University'),
          backgroundColor: const Color.fromARGB(255, 3, 48, 126),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(children: [
            Image.asset(
              'assets/images/nsuFlyerOne.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            ElevatedButton(
                child: Text('Learn More!'),
                onPressed: () {
                  launchURL(url);
                }),
          ]),
        )));
  }
}
