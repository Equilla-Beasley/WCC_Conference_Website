import 'package:flutter/material.dart';
import 'package:wcc_app/Second_Layer.dart';

///Pops up info instead of everything on hold as we see how much information
///we are going to have. What I'm talking about in the picture we took
///where inside the time slots you see everyone presenting but in one
///line but when you click them it will pop up everyone but tbh that's not
///really intuative

///This is the class that initializes the first layer of expandables
///Used for later functions

///The first day of the event sheet
class DayOne extends StatelessWidget {
  const DayOne({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Thursday, Feb 9'),
            backgroundColor: const Color.fromARGB(255, 3, 48, 126),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )),
        body: ListView(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
      )
        ),
      ),
    );
  }
}

///Works as the initializer in a way.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

///Holds the data and text for all the sessions.
final List<Entry> data = <Entry>[
  Entry(
    '8:00am - 4:00pm: Registration and Information',
  ),
  Entry(
    'Session A: 8 - 8:50',
    <Entry>[
      Entry(
        'Navigating Ethos in Writing Center Directorship: Mentoring as Administrative Practice',
        <Entry>[
          Entry(
              'This presentation examines the ebbs and flows of mentoring as an administrative practice and raises questions about the ways a writing center director’s ethos works to establish a culture that gets taken up by tutors as they articulate and practice their own philosophies of tutoring and of writing instruction.\n\nPresentor: Devon Ralston: Winthrop University\nLocation: Blues Meeting Room\nPresentation Type: Individual'), //abstract
        ],
      ),
      Entry(
          'Navigating Ethos in Writing Center Directorship: Mentoring as Administrative Practice',
          <Entry>[
            Entry(
                'Roughly 20% of students who visit Vanderbilt’s Writing Studio are writing application materials, including essays for prestigious fellowship opportunities. Over the past five years, our writing center has cultivated a successful campus partnership to create new avenues of support for these applicants, specifically Fulbright applicants (and, more recently, students applying for the NSF GRFP). This presentation will explore the history and development of this partnership, including foundational conversations, evolving partner responsibilities, logistical considerations that inform program structure, and future goals. We will also exchange general tips for building and sustaining these types of campus partnerships. \n\nPresentor: Beth Estes: Vanderbilt University\nLocation: Blues Meeting Room\nPresentation Type: Individual'),
          ]),
      Entry(
          '"University Level Writing?” Reframing Language and Reassessing Metrics for Student Writing in the Era of Long Covid',
          <Entry>[
            Entry(
                'This presentation investigates the concept of "university level writing" as it relates to the varied expectations that instructors bring to their classrooms. I use the notion of a standardized form of "university level writing" to suggest that one of the central functions of pandemic-era Writing Centers is to reassure students that standards are ever-shifting and to communicate to faculty that we cannot expect a uniform baseline of writing knowledge. What do writing standards mean in the era of long covid how can we engage faculty across the disciplines in meaningful discussion around meeting our students where they are?\n\nLocation: Blues Meeting Room\nPresentors: Chattanooga\nPresentation Type:Individual'),
          ]),
      Entry(
          'Training for Relational Equity: Applying Browns "Cultivating Meaningful Connection" Model to the Writing Center',
          <Entry>[
            Entry(
                'Many have called on writing centers to address their roles in upholding higher education’s various inequitable cultures of writing. In order to change writing centers nationally, we must develop new approaches that reach into both the writing-specific and relational aspects of our pedagogy. This workshop focuses on the element of equitable human interaction in writing consultations. Berea College’s Writing Resources has been experimenting with a training model that incorporates Brené Brown’s three-part grounded theory of “Cultivating Meaningful Connection.” We will share the results of our initial efforts from multiple perspectives and then engage participants in imagining possible applications for their own institutional contexts.\n\n Location:Gosepel Meeting Room\nPresentors:Amy McCleese Nichols: Berea College, Callista Tyson: Berea College, Caitlyn Hansberger: Berea College, Moira Halbauer: Berea College\nPresentation Type: Workshop'),
          ]),
      Entry(
          'Preparing Writing Assistants to Aid Neurodivergent Student Writers',
          <Entry>[
            Entry(
                'Writing Centers aim to support students as they develop writing skills and the confidence to communicate academically, professionally, and personally. Therefore, it is vital that writing assistants be prepared to aid all students, especially students who are neurodivergent. This presentation will go over strategies writing assistants can use to help students on the spectrum as well as how to put together a training module to prepare writing assistants for different tutoring scenarios.\n\nLocation: Rock Meeting Room\nPresentors: Shannan Harrington: Georgia Highlands College, Victoria Banks: Georgia Highlands College, Kelsey Provow: Kennesaw State University,  Maria Badillo: Kennesaw State University\nPresentation Type: Panel'),
          ]),
      Entry(
          'Tutors and Administrators: Power Dynamics, Collaboration, and Change',
          <Entry>[
            Entry(
                'Collaboration between tutors and tutoring administrators allows for tutor-driven change, but how can such collaboration occur, given the tutor-administrator relationship’s inherent power disparity? In this workshop, the facilitator will argue that collaboration is falsely presupposed to require power balance and that tutor-administrator collaboration is possible. Exploring this theory in their unique contexts, participants will both interrogate this argument and use it to investigate power and collaboration in their own professional tutoring relationships. This workshop welcomes all participants, regardless of tutoring role!\n\n Location: Ballroom C\nPresntor: Jessica Newman\nPresentation Type: Workshop'),
          ]),
    ],
  ),
  Entry(
    'Session B: 9 - 9:50',
    <Entry>[
      Entry(
          'Supporting Graduate Student Writing Consultants: A Multifaceted Approach to Consultant Training',
          <Entry>[
            Entry(
                'This panel will focus on how one writing center developed a multifaceted training approach (including synchronous meetings, training modules, and discipline-specific support) to better support graduate student consultants from across the disciplines. Presenters will describe their training structure and discuss its impact on graduate student consultants. Participants will brainstorm together ways to further develop and support graduate student consultants at their home institutions.\n\nLocation: Blues Meeting Room\nPresentors:Janine Morris: Nova Southeastern University, Nikki Chasteen: Nova Southeastern University, Ricky Finch: Nova Southeastern University\nPresentation Type: Panel'),
          ]),
      Entry('Design Thinking Meets Writing', <Entry>[
        Entry(
            'What do Writing Centers care about? They care about student writers who want to communicate a meaningful message to their intended audience. What do entrepreneurs care about? They care about creating a product or service that customers want to buy. This workshop takes an interdisciplinary approach by applying the non-linear process, design thinking (developed by the Hasso Plattner Institute of Design at Stanford) to the writing process. The writer can use this iterative tool to quickly move through multiple ideas and find the best way to communicate with his intended audience.\n\n Location: Rock Meeting Room\nPresentors:Trish Weber: Kennesaw State University, Winnie Dunlap: Kennesaw State University\nPresentation Type:Workshop'),
      ]),
      Entry('HBCU Get Together', <Entry>[
        Entry(
            'In our first in-person meeting since the pandemic, the HBCU network will address successes and challenges from 2021-2022 and ways to increase engagement and collaboration among the HBCUs. Because 2023 is an election year for the HBCU representative position, this meeting will inform future goal-setting and planning for the incoming HBCU representative.\n\nLocation: Ballroom C\nPresentors: LaKela Atkinson: East Carolina University\nPrsentation Type: HBCU Get Together'),
      ]),
      Entry(
          'Using Rhetorical Reading Guides as a Training and Consulting Tool: An Interactive Workshop',
          <Entry>[
            Entry(
                'This workshop will offer strategies for using Rhetorical Reading Guides, originally developed by Amanda Greenwell, in staff training and consultations. The workshop will begin by briefly reviewing literature on genre and connections between reading and writing in the disciplines. Presenters will then introduce the concept of the RRG and will discuss how they have used it in both staff training and consultations with writers. Attendees will then have time to practice creating RRGs using sample papers from a variety of genres and disciplines. The workshop will conclude with discussion about how attendees might use RRGs in their own centers.\n\n Location: Ballroom D\nPresentors:Candis Bond: Augusta University, Sydney Highfield: Augusta University, Kaysha Adamo: Augusta University, Jaysen Lami: Augusta University\nPresentation Type: Workshop'),
          ]),
      Entry(
          'You are Smarter Than You Think: The Secret Origins of the Fixed Mindset',
          <Entry>[
            Entry(
                'The idea of the growth mindset has been discussed at length, but the fixed mindset has largely been ignored, even in educational circles. This workshop will explore the multiple causes of a fixed mindset, how fixed mindsets damage learning, and how we as academic support can assist students in releasing those mindsets within the safety of our writing centers. Strategies for supporting healthier thinking, learning, and writing will be presented and discussed, and we will also have a few activities to practice these new skills for ourselves.\n\nLocation:Ballroom E\nPresentor: Robin Allison: Cleveland Community College\nPresentation Type:Workshop'),
          ]),
      Entry('Executive Board Meeting', <Entry>[
        Entry('Location: Country Meeting Room'),
      ]),
    ],
  ),
  Entry(
    '10:00-10:50: \nCoffee and Parties: Prefunction A\nPoster Presentations: Ballroom A',
  ),
  Entry(
    'Session C: 11:00 - 11:50',
    <Entry>[
      Entry(
          'Writing Centers as Content Creators: Piloting Writing Center-Developed OER in the Classroom',
          <Entry>[
            Entry(
                'Although writing centers create myriad writing support resources and possess unique insight into the issues central to student writing and success, few, if any, develop materials for course-based writing instruction. The presenters view this as a missed opportunity and share their experience 1) applying for and receiving a state-sponsored Affordable Learning grant and 2) subsequently creating, piloting, and assessing open educational resources (OER) units for their institution’s first-year composition (FYC) program. Attendees will engage in conversation about what it means for writing centers to take on the role of content creators and explore this possibility for their own centers.\n\n Location: Blues Meeting Room\nPresentors: Christine Harkreader: Keenesaw State University, Mary Lou Odom: Keenesaw State University, Rachel Greil: Keenesaw State University\nPresentation Type: Roundtable'),
          ]),
      Entry('Designing WC Assessments: An Interactive Workshop', <Entry>[
        Entry(
            'Come to this workshop if you are planning to create or update an assessment plan for your writing center—or if you are just interested in the topic of assessment. The workshop leader will begin with a review of common qualitative and quantitative assessment methods. After this review, attendees will have the opportunity to discuss and work on their own ideas for assessment in an interactive workshop setting. Attendees are encouraged to bring drafts or fully developed assessment plans, but can also start with a blank page. \n\n Gospel Meeting Room\nPresentors: Scott Pleasant: Coastal Carolina University\nPresentation Type: Workshop'),
      ]),
      Entry(
          'Writing Centers and the Challenges of Post-Covid Education', <Entry>[
        Entry(
            'Following a literature review and survey studies, we have identified the factors of student attendance at writing centers as well as the challenges students face in a post-Covid education environment. This panel aims to discuss the key factors influencing students’ decisions to visit the Writing Center, the challenges modern students face in a growing online/hybrid education environment, and propose methods by which writing centers around the country can expand in both marketing and services to reach and assist as many students as possible.\n\nLocation: Rock Meeting Room\nPresentors:Jessica Newman: Jefferson Community and Technical College\nPresentation Type: Panel Presentation'),
      ]),
      Entry('Community College Get Together', <Entry>[
        Entry(
            'Come get together to talk about community college writing centers.  Anyone with an interest in community colleges is welcome!\n\nLocation:Ballroom B\nPresentors: Jessica Newman: Jefferson Community and Technical College\nPresentation Type: Community College Get Together '),
      ]),
      Entry(
          'Attention to Intention: A Strategy for Implementing and Sustaining a Student-Centered Organizational Culture',
          <Entry>[
            Entry(
                'Sans COVID-19, the most significant change the Center for Writing & Communicatio at the University of Memphis has undergone is the resignation of the long-time director in May 2021. With the loss of permanent leadership, the future of the center looked bleak. Disconnected by ongoing pandemic restrictions and concerned about the center’s continued funding into the ‘22-‘23 academic year, consultants’ morale was low, and student usage was down. When a permanent director was hired in August 2022, the new leadership team quickly and strategically sought to restore a positive environment at the CWC for clients and consultants alike.\n\n Location: Ballroom C\nPresentors: Meredith Boulden: Univeristy of Memphis, Shukura Ayoluwa Umi: Univeristy of Memphis, M.L. Rachell Berry: Univeristy of Memphis\nPresentation Type: Panel'),
          ]),
      Entry(
          'How Do I Keep Doing This?: A Roundtable Naming and Addressing Writing Center Director Burnout and Mental Health',
          <Entry>[
            Entry(
                'The terms "burnout" and "trauma" have trended in popular and academic discourses in response to the COVID-19 pandemic. These conversations have largely focused on students and tutors mental well-being. In this roundtable, the facilitator and participants will address burnout and trauma we have experienced as writing center administrators.\n\nLocation: Ballroom D\nPresentors:Deidre Evans Garriott: University of South Carolina\nPresentation Type: Roundtable'),
          ]),
      Entry(
          'Establishing Advocacy for Writing and Communication Centers',
          <Entry>[
            Entry(
                'As a consultant for the Center for Writing and Communication (CWC) at the University of Memphis, it is evident that the directors have implemented a newer writing center approach, that surpasses North’s original one, to accommodate students with their writing and communication assignments. The CWC goes beyond North’s original view of a center and instead encourages advocacy by using the SWOT method to expand on the communication assistance the CWC offers. While this proposal targets communication, this can be applied to writing centers as well.\n\nLocation: Ballroom E\nPresentors:Samantha Guajardo: University of Memphis\nPresentation Type: Individual'),
          ]),
      Entry(
          'The Utilization of Special Education Training within the Writing Center Setting',
          <Entry>[
            Entry(
                'Tutoring Writing is an art and practice that strives to be totally inclusive, but with regard to working with special needs students, tutors might be less than prepared, or confident. My preliminary research has shown that general education teachers are less confident than special education teachers (“SPED”) in working with students of all types and backgrounds. I will research if certain “SPED’ training methods are effective, and thus, can be utilized in Writing Centers when training tutor-writers to leave them confident with working with students of all backgrounds.\n\n Location: Ballroom E\nPresentors: Charlotte Daigle: Middle Tennessee State University\nPresentation Type: Individual'),
          ]),
      Entry(
          'Writing Center Work on LinkedIn: How New Tutor Alumni Define Their Skills',
          <Entry>[
            Entry(
                'Analyzing how recent graduates describe writing center work on LinkedIn, this presentation responds to these questions: Are new peer tutor alumni who are in the midst of the college-to-career transition taking full advantage of their writing center experiences? And how can writing center directors support these students efforts to understand, articulate, and transfer their skills to the workplace?\n\nLocation: Ballroom E\nPresentors: Lori Jacobson: William and Mary University\nPresentation Type: Individual'),
          ]),
    ],
  ),
  Entry(
    '12:00 - 2:00: Lunch on your own',
  ),
  Entry(
    'Session D: 2:00 - 2:50',
    <Entry>[
      Entry(
          'What can we change to adapt to student dispositions?Understanding and responding to student confidence levels in writing center consultations',
          <Entry>[
            Entry(
                'The presentation will explore how writing tutors can identify and address the confidence levels of students in writing center consultations. As such, the speakers will discuss how confident and less confident writers may be identified in writing center consultations. They will also discuss tutoring strategies that may be effective for different types of writers based on their writing confidence. These findings can have implications for training writing tutors and thinking about best practices for tutoring writers based on their confidence levels.\n\n Location: Blues Meeting Room\nPresentors: Prabin Lama: Bemidji State University, Crystal Kastl: Bemidji State University\n Presentation Type: Individual'),
          ]),
      Entry(
          'Affective Elements of Tutor Epistemology at the Writing Center: A LIWC Analysis of Participant Responses to a Survey Question about Writing-Related Knowledge',
          <Entry>[
            Entry(
                'With the use of LIWC, a text analysis application, this presentation addresses how writing center tutors “feel about” writing-related knowledge in their affective domain, and how their affective elements of tutor epistemology are similar or different to each other, based on their backgrounds. \n\nLocation: Blues Meeting Room\nPresentors: Daewoo Jin: University of Montana\nPresentation Type: Individual'),
          ]),
      Entry('Tutoring Strategies for different Writing Identities.', <Entry>[
        Entry(
            'Typically, in writing centers, tutors are trained to work with specific demographics of students: returning, multilingual, reluctant, and so on. Tutors are also trained to vary their approach, depending on where the text is in the writing process, whether it’s a brainstorm or final draft will change a tutors approach. But what if tutors were able to identify the type of writer with whom they are working? Ede highlights four types of writing habits into ‘heavy planners’, ‘heavy revisers’, ‘sequential composers’, and ‘procrastinators’ categories. Heavy planners consider their ideas and plans “in their hands and their first drafts are often more like other writers’ second or third draft.” (Ede 83) Heavy revisers “may not seem to plan because they begin drafting so early” and this sustained activity helps reduce frustration. Sequential Composers devote equal amounts of time to “planning, drafting and revising” and though writers often procrastinate, “the procrastinator” according to Ede “are people who would habitually delay writing until the time for a final draft.” (84) These identities have strengths that would help writers build their skills, while the weaknesses of each, when studied, will help these writers know how to get better with writing. It will also help tutors at Writing Centers understand what approach to use during tutoring processes. For example, heavy planners, because they have thought of what they would write well enough before putting it down, tend to be faster, organized and have intense efforts in their first couple drafts. But this leads to a weakness where they might not revise frequently like other writers, (Ede, 83) consequently leading to avoidable errors. I am both a heavy planner and reviser most of the times and I have put conscious effort in going back to read my essay to avoid such mistakes that I could overlook because my first drafts already seem ‘perfect’. When a writing tutor meets with this kind of writer with either or both identities in a tutoring scenario, they could have said: “this is the first draft I wrote but I have finished with it.” A tutor at that point can figure out the writer’s identity and know that their drafts will be excellent, most likely, due to their strength in drafting and organization, but they might need careful general sentence structure checks alongside other High Order Concerns (HOCs). These concerns to look for in different writers will help discover tutoring strategies for each unique identity in the Writing Center. I believe it would be helpful to share these categories with students to help them reflect on their writing identities as a way to evaluate what works or not, and how to improve their writing processes.\n\n Location: Blues Meeting Room\nPresentor: Favour Boluwade: Middle Tennessee State University\nPresentation Type: Individual'),
      ]),
      Entry(
          'The Ship Must Sail On: Navigating the Rhythm and Waves of Changing Administration, Funding, Advocacy, and Control',
          <Entry>[
            Entry(
                'It has been said that “the wind and the waves are always on the side of the ablest navigator,” yet writing center administrators are not always taught the ropes for sailing with the ever-changing winds of fund allocation, jurisdiction, and management. Our multi-campus writing center has had multiple transitions that did not take place without some confusion regarding titles, physical location, and hierarchy. This roundtable discussion will explore taboo topics of power, policies, academic subcultures, advocacy, and commercialism in writing centers in hopes we may find our sea legs for times of adverse weather. \n\nLocation: Gospel Meeting Room\nPresentors: Bethani England: Hinds Community College\nPresentation Type: Roundtable'),
          ]),
      Entry(
          'Navigating the Waters of Tutoring: Writing Center Archives as a Bridge for the First-Year Tutor',
          <Entry>[
            Entry(
                'New writing tutors can sometimes feel unsteady as they begin to navigate the complicated waters of writing centers. One way that writing centers can help their tutors with such feelings is by expanding into and creating archives that can build an institutional memory of practices and policies, thereby cultivating a community and documenting a history to show tutors that they are not alone. In this panel, we define archiving and archival practices, show how archives can support tutor confidence, and discuss concrete ways in which writing centers can archive.\n\n Location: Rock Meeting Room\nPresentors: Samira Grayson:  Middle Tennessee State University, Morgan Stence: Middle Tennessee State University\nPresentation Type: Panel'),
          ]),
      Entry(
          '2024 conference meeting (executive board + 2024 conference chairs)',
          <Entry>[
            Entry('Location: Ballroom B'),
          ]),
      Entry('Applying Therapeutic Pedagogy to Tutoring', <Entry>[
        Entry(
            'This program will teach writing assistants how to offer productive, uplifting, and sustainable solutions to students via therapeutic pedagogy. This method of teaching encourages a higher degree of empathy and intuition, prompting students to feel safe and confident while writing and revising. In this workshop, I will explain the core concepts of therapeutic pedagogy, introduce my research on applying therapeutic techniques in a tutoring center, host an open discussion on common tutor struggles, and train tutors to practice therapeutic techniques in their own writing centers.\n\n Ballroom C\nPresentor: Haley Hunt: Keenesaw State University\nPresentation Type: Workshop'),
      ]),
      Entry(
          'A New Normal: Bringing Empathy, Mindfulness, and Community into the Post-Pandemic Writing Center',
          <Entry>[
            Entry(
                'In this workshop, we will discuss the changes made to our approach to training and professional development and explore how we applied the lessons learned from the COVID-19 pandemic to a post-pandemic academic space.Along with sharing our own experiences, we hope to engage the participants in a discussion of how they have adapted to post-pandemic writing center operations, and the impact on future operations of writing centers. This conversation hopes to serve as professional development and as a space for consultants from different institutions to learn from their shared experiences during the COVID-19 pandemic and its aftermath. \n\nLocation: Ballroom D\nPresentors: Autumn Bishard: Nova Southeastern University, Kelly Concannon: Nova Southeastern University, Julia Kelley: Nova Southeastern University\nPresentation Type: Workshop'),
          ]),
      Entry('High School Writing Centers Get Together', <Entry>[
        Entry(
            'This meeting will provide an opportunity for high school writing center directors and tutors to connect with one other and discuss applicable aspects of the conference together. We will also discuss ways to keep in touch going forward.\n\nLocation: Ballroom E\nPresentors: Melissa C. Daniels: Deep Run High School, Mia B. Tambellili: Deep Run High School'),
      ]),
    ],
  ),
  Entry(
    'Session E: 3:00 - 3:50',
    <Entry>[
      Entry(
          'Increasing Cultural Sensitivity When Working with ELL Writers',
          <Entry>[
            Entry(
                'This panel will focus on a workshop for creating multicultural training for faculty with a keen focus on ELL writers’ experiences. The aim is to increase faculty awareness of cultural sensitivity within their feedback to writers. Although this will be a pilot workshop at Augusta University, this study has implications for the wider writing center community. Conducting research in this area is vital to the field because it will provide a framework for conversations about linguistic justice. Using the works of writing center scholars, my workshop aims to bridge gaps that may exist in regards to this topic. \n\nLocation: Blues Meeting Room\nPresentors: Bethany Stanley: Augusta University\nPresentation Type: Panel'),
          ]),
      Entry('Adapting Pedagogy to Changing Currents', <Entry>[
        Entry(
            'In this roundtable conversation, undergraduate peer consultants will participate in a conversation moderated by their director about how pedagogical training has changed during the ongoing merger of their campus Writing Center and academic success center. This conversation will compare and contrast trends in writing pedagogy and learning science as well as the role our Academic Consultants play as "force multipliers" for academic success resource advocacy on campus. We are curious about relations between writing and academic success centers on other campuses and invite your questions and comments as well! \n\nLocation: Gospel Meeting Room\nPresentor: Liz Egan: Millsaps College\nPresentation Type: Roundtable'),
      ]),
      Entry(
          'Radical Transparency: Healing vs. Self Care in Responding to the Emotional Labors of Tutors',
          <Entry>[
            Entry(
                'This workshop will focus on collaboratively constructing strategies for addressing emotional labors in writing center work. We will build a collection of actionable practices that move beyond individualist self-care culture and toward advocacy that administrators can perform in their own centers and universities with special regard for radical transparency and mindful healing. \n\nRock Meeting Room\nPresentors: Skye Roberson: University of South Carolina, Justin Cook: Justin Cook: High Point University \nPresentation Type: Workshop'),
          ]),
      Entry('Get To Know SWCA', <Entry>[
        Entry(
            'Come to this informal discussion to meet SWCA board members, including president Brian McTague, as well as to learn about different opportunities for you to get involved with our organization. These include hosting a conference, webinar, or local event, writing an article for our peer-reviewed journal, Southern Discourse in the Center (SDC), and serving on our board. We currently have four open board positions (digital content developer, SDC co-editor, and Florida and North Carolina state reps), and we’d love to talk with you about them, so please stop by to say hi! \n\nLocation: Ballroom B\nPresentors:Brian McTague: Virginia Commonwealth University'),
      ]),
      Entry(
          'Come Play in the Sandbox: A Generative Approach to Asynchronous Screencast Appointments',
          <Entry>[
            Entry(
                'This workshop outlines the rationale, obstacles, and platform options for crafting screencast feedback before focusing specifically on the use of sandbox documents. Through these nondestructive documents, consultants can demonstrate hands-on experimentation, revision options, and generative comments. Participants will be invited to practice and reflect on creating their own sandbox documents in response to sample student writing. Though not required, participants may benefit from bringing a laptop or tablet and headphones to this workshop. \n\nLocation: Ballroom C\nPresentors:Michelle Cohen: Medical University of South Carolina\nPresentation Type: Workshop'),
          ]),
      Entry(
          'Creating a brave space through affinity groups: LGBTQ+ inclusion at a writing center in the Deep South',
          <Entry>[
            Entry(
                'During fall 2022, a writing center facilitated two semester-long affinity groups: LGBTQ+ Alliance and LGBTQ+ Allies. Affinity groups invite people with shared identities to build community, hold critical conversations, and move collectively into taking action (Alicea & Johnson, 2021; Oto & Chikkatur, 2019). Within writing centers, affinity groups are an innovative initiative that can substantially contribute to workplace climate for members of minoritized groups. During this interactive workshop, an administrator and a peer consultant will discuss affinity groups’ curricula and impact, and they will invite audience members to consider how they can implement affinity groups within their contexts.\n\n Location: Ballroom D\nPresentors: Katharine Brown: Auburn University, Jonah Breed: Auburn University\nPresentation Type: Workshop'),
          ]),
      Entry(
          'Time as an Accessibility Issue: Scheduling for Student Success',
          <Entry>[
            Entry(
                'Accessibility is an important value in writing center work. For our writing center at Middle Georgia State University’s Macon campus, our most pressing accessibility need is time. Because the hours we can offer are limited (availability of consultants, building unused after 6 pm, etc.), we have to be careful how we allocate our schedule to meet the most needs effectively. We will report on the results of a surveys for undergraduate and online graduate students and how the data helped us reconsider our approach to scheduling. \n\n Location: Ballroom E\n Presentors: Sharon Colley: Middle Georgia State University\nPresentation Type: Individual'),
          ]),
      Entry(
          'The Process of Making a Writing Center Space More Physically Accessible',
          <Entry>[
            Entry(
                'Over the course of several years, I have studied the Americans with Disabilities Act (ADA) Title III Regulations and applied them to the UT Martin Writing Center, and I now offer advice for writing center staff and other university administrators who wish to improve the physical accessibility of their spaces. While my work focused mostly on improving the experiences of wheelchair-using students and staff, the lessons I learned are applicable for anyone who wants to improve the inclusivity of their spaces. \n\nLocation: Ballroom E\nPresentors: Kelle Alden: The University of Tennessee at Martin\nPresentation Type: Individual'),
          ]),
      Entry(
          'Video Games and How They Can Benefit a Writing Centers Outreach',
          <Entry>[
            Entry(
                'A properly developed video game has the potential to allow students to explore and engage with their writing center, all from the comfort of their home, dorm, or anywhere else. This presentation will educate attendees on the possibility of using a video game to engage with their students in a unique and interesting way, while giving them the tools to do so efficiently. \n\nLocation: Ballroom E\nPresentor: Colburn Jones: Mississippi College\nPresentation Type: Individual'),
          ]),
    ],
  ),
  Entry(
    '4:00 - 6:00: Opening Reception \nLocation: Ballroom A',
  ),
];

class EntryItem extends StatelessWidget {
  EntryItem(this.entry);

  final Entry entry;
  final font = const TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 0, 0, 0));

  /// ignore: empty_constructor_bodies
    ListView.builder{
    if (children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(
        root.title,
        style: font,
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
