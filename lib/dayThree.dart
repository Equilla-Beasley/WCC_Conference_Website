import 'package:flutter/material.dart';

///This class works identicically to all the other days of the event,
///using a list to hold all of the events
///and a scaffold to hold the items in place.
class dayThree extends StatelessWidget {
  const dayThree({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Saturday, Feb 11'),
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
        body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              Divider(color: Color.fromARGB(255, 0, 0, 0)),
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
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
    'Session J: 8:00 - 8:50',
    <Entry>[
      Entry(
        'Come on in: Creating a Culture of Comfort in an HBCU Writing Center',
        <Entry>[
          Entry(
              'Composition and rhetoric can be intimidating for many students, especially considering factors such as lack of preparation from secondary school, the thought of validity of essay writing, and imposter syndrome. Writing center administrators must be able to create an environment in which students can be encouraged to express their thoughts to answer whatever assignment is given from their professor. This presentation is to show how creating the culture is necessary in order to lead students to complete writing assignments efficiently. A few examples/experiences will be shared that relate to the presentation. \n\nLocation: Blues Meeting Room\nPresentors: Kerry Brackett: Miles College\nPresentation Type: Individual '), //abstract
        ],
      ),
      Entry('Beyond Writing: Self Discovery and Sharing', <Entry>[
        Entry(
            'The Morehouse Writing Centers mission is to empower African American college-aged men to effectively and eloquently communicate through the written language. It is a space where Men of Morehouse come not only to get help to improve their writing skills, but help in navigating their life situations. \n\nLocation: Blues Meeting Room\nPresentor: Nathaniel Norment, Jr.: Morehouse College\nPresentation Type: Individual'),
      ]),
      Entry('You Can Sit With Us: The Writing Center as a Safe Space', <Entry>[
        Entry(
            'The writing center can be a surprisingly intimidating place for both students and tutors. I posit that the writing center should be a safe, judgment free, healthy space for both students and tutors. It is my goal to provide resources and examples of how the writing center could be improved to become an even safer, less judgmental space for students and tutors. My recommendations include collaboration with campus counseling services, workshops involving campus counseling services, ways to conduct sessions if a student is apprehensive about being overheard, and team-building exercises to increase the feeling of community amongst tutors. \n\nLocation: Blues Meeting Room\nPresentor: Kylie Petrovich\nPresentation Type: Individual'),
      ]),
      Entry(
          'Resilience and Resistance: An Embodied Approach to Writing Center Practices',
          <Entry>[
            Entry(
                '“Oppress,” “fight,” “change.” We hear this vocabulary throughout recent pedagogical frameworks of resilience and resistance. This panel presentation will begin to answer the following questions: what does resilience and resistance looks like in tutoring practices and approaches in writing sessions? What does resilience and resistance look like in writing centers? How do writing centers experience resilience and resistance? And how can writing center administrators support resilience and resistance pedagogy with WC staff? \n\nLocation: Gospel Meeting Room\nPresentors: Nicole Turner: Georgia State University, Tyrell Collins: Georgia State University\nPresentation Type: Roundtable'),
          ]),
      Entry('Meeting Tutors Personal and Professional Needs', <Entry>[
        Entry(
            'How do Writing Centers provide tutors with personal support and professional development to meet their needs and grow their practice? In this roundtable, Writing Center directors and tutors at all levels, K12 to post-secondary, will consider tutors’ personal and professional needs and share ideas to meet these needs in sustainable and innovative ways. \n\nLocation: Rock Meeting Room\nPresentors: Melissa Daniels: Deep Run High School, Mia Tambellini: Deep Run High School\nPresentation Type: Roundtable'),
      ]),
      Entry(
          'Navigating Gender in the Writing Center: Adopting New Methods and Approaches to Diverse Gender Identities',
          <Entry>[
            Entry(
                'As diverse gender identities become more present in our writing center spaces, it is imperative that tutors and writing center administrators navigate theory and methodology to create a welcoming space, both in-person and online. This panel serves as a start to that conversation and seeks to interrogate the ways Georgia State University’s Writing Studio has changed to better anticipate an underserved population in higher academia. \n\nLocation: Ballroom C\nPresentors: Cameron Moore: Georgia State University, Dylan Maroney: Georgia State University\nPresentation Type: Panel'),
          ]),
      Entry('Humor in the Writing Center', <Entry>[
        Entry(
            'This presentation invites attendees to think about the humor they use in their tutoring. The research asked the question of how the rhetoric of humor is used in writing centers and collected perspectives of both tutors and administrators. As indicated by the subject matter, the presenter is required to be hilarious and entertaining. Attend for some laughs and an examination of why the use of humor in tutoring should be taught in writing center orientations and staff meetings.\n\nLocation: Ballroom D\nPresentors: Sydney Robertson: Georgia State University\nPresentation Type: Individual'),
      ]),
      Entry(
          'Tutor-to-Tutor: Developing Meaningful Professional Relationships',
          <Entry>[
            Entry(
                'This roundtable will explore several key benefits of strengthening the interpersonal bonds between tutors at writing centers, particularly now as post-pandemic lifestyles, habits, and attitudes develop. Presenters will specifically explain the role that building community can play in avoiding harmful hierarchical dynamics and encouraging interpersonal trust necessary for professional growth. Attendees will not only learn strategies to facilitate bonding in-person and digitally but also share and develop their own ideas through active discussion.\n\nLocation: Ballroom E\nPresentors: Maggie Sharp: University of Alabama at Birmingham, Emmett Christolear: University of Alabama at Birmingham, Kate Oakley: University of Alabama at Birmingham, Madison Owens: University of Alabama at Birmingham\nPresentation Type: Roundtable'),
          ]),
    ],
  ),
  Entry(
    'Session K: 9:00 - 9:50',
    <Entry>[
      Entry(
          '“Switching Profiles”: Promoting the Critical Reading of Software in the Writing Center',
          <Entry>[
            Entry(
                'This presentation shares the initial results of a study of the procedural rhetorics of writing center administrative software (e.g., TutorTrac, WCOnline) to suggest ways that centers might serve as spaces for further collaborative and critical readings of software. Select ideas from software studies are then used to sketch out possible models for how such investigations might inform tutor education and further research. \n\nLocation: Blues Meeting Room\nPresentors: Matthew Bryan: University of Central Florida\nPresentation Type: Individual'),
          ]),
      Entry('Creating Graduate Writing Groups at Georgia College', <Entry>[
        Entry(
            'Graduate writing groups provide time, space, and guidance for graduate students to develop writing specific to their discipline through facilitated peer-to-peer feedback. The Georgia College & State University (GC) Graduate School Administration and Writing Center are collaborating on finalizing the implementation of groups for the masters-level programs offered on and off-campus. With the groups structure, interested programs, and resources to train facilitators identified, graduate writing groups will soon improve writing and communication within GCs graduate programs as they have done in other institutions throughout higher education. \n\nLocation: Blues Meeting Room\nPresentors: Dan Johnston: Georgia College & State University\nPresentation Type: Individual'),
      ]),
      Entry(
          'The Role of the Research Coordinator: Researching Renewal and Coordinating Advocacy in the Writing Center',
          <Entry>[
            Entry(
                'In my presentation, I will discuss how I narrowed my scope as Resource Coordinator to focus on areas where I could not just affect the most change, but also advocate for both students who visit the center and the workers who serve them. I can help make more ambitious projects a reality, providing an extra pair of hands for different teams, and thus assisting in making the writing center as accessible as possible. \n\nLocation: Blues Meeting Room\nPresentors: Nathanael Williams: Georgia College & State University\nPresentation Type: Individual'),
          ]),
      Entry(
          'A Discussion of Strategy: Undergraduate Peer Consultant Training',
          <Entry>[
            Entry(
                'This round table will be a discussion of the various methods of training for undergraduate consultants in communication center work. The discussion will take place between peer consultants from the Georgia Tech Communication Center and audience members. Questions asked will surround advantages and disadvantages consultants (peer and professional) perceive in the transition from training to tutoring. \n\n Location: Gospel Meeting Room\nPresentors: Stephanie Olivia: Georgia Institute of Technology (Georgia Tech), Lily Soetebier: Georgia Institute of Technology (Georgia Tech), Alyssa Ramos: Georgia Institute of Technology (Georgia Tech), Abigail Reams: Georgia Institute of Technology (Georgia Tech) \nPresentation Type: Roundtable'),
          ]),
      Entry(
          'Translating Differences: Bridging the Gap between International Students and Writing Centers',
          <Entry>[
            Entry(
                'Previous studies have found variable results surrounding what international tutees find beneficial. Conversely, tutors have expressed concerns about their own ability to tutor international students. This project aims to investigate tutee experiences, their preferred tutoring strategies, and potential instances of bias within Agnes Scott’s Center for Writing and Speaking. A focus group was held to collect qualitative data from current international students. With the results from this study, center materials and training will be updated to reflect the unique and evolving needs of this student population. \n\nLocation: Rock Meeting Room\nPresentors: Adelaide Harris: Agnes Scott College, Arabella Lewis: Agnes Scott College, Shutong Guo: Agnes Scott College, Rejoice Lopuke: Agnes Scott College, Chloe Gilkesson: Agnes Scott College\nPresentation Type: Panel'),
          ]),
      Entry('Submitting to Southern Discourse', <Entry>[
        Entry(
            'Come to this session to pitch your article to the editors of Southern Discourse in the Center or workshop your idea with a supportive group. Even in you do not have an idea yet, you can learn about SCD submission and editorial process. If you are interested in contributing an article to the journal, joining the editorial staff, or serving as a reviewer for the journal, this is the session for you. \n\nLocation: Ballroom B\nPresentors: Scott Pleasant: Coastal Carolina University, Devon Ralston: Winthrop University\nPresentation Type: Southern Discourse Presentation'),
      ]),
      Entry(
          'Therapeutic Writing for College Students Amid the Changing COVID-19 Landscape',
          <Entry>[
            Entry(
                'The proposed roundtable will focus on writing and its therapeutic benefits for college students, specifically in the context of the deeply impactful COVID-19 pandemic. \n\nLocation: Ballroom C\nPresentors: Natalie Gutierrez: Florida International University\nPresentation Type: Roundtable'),
          ]),
      Entry(
          'Beyond Writing Center Lore: Adapting to Students Changing Needs',
          <Entry>[
            Entry(
                'Coming from the perspective of the director and a doctoral writing tutor from a seminary writing center that primarily serves non-traditional and online students, this roundtable discussion focuses on how writing centers can step away from writing center lore and adapt to serve the needs of changing student populations. The presenters will organize discussion around recent writing center literature, their experience with implementing asynchronous tutoring in their writing center, and feedback from non-traditional students on their writing center preferences and needs. \n\nLocation:Ballroom D\nPresentors: Katherine Frankel: The Southern Baptist Theological Seminary, Alisha Biler: The Southern Baptist Theological Seminary\nPresentation Type: Roundtable'),
          ]),
      Entry(
          'Collaborative Leadership Strategies for Classroom Accessibility and Tutor Self-Efficacy',
          <Entry>[
            Entry(
                'This workshop explores ways that collaborative leadership models can lead to student accessibility, embedded tutor agency, and responsive pedagogy in Developmental Composition. As both a writing consultant and COMP Fellow, Cami will discuss navigating leadership roles and the resulting impact on a neurodivergent student’s growth as a writer. Adele will then offer perspectives on how Cami’s insight led to adaptive classroom techniques that increased inclusion and accessibility. Attendees can expect to learn strategies for classroom inclusivity, practice collaborative leadership, and generate concrete goals that maximize consultants’ inter-institutional positions. \n\nLocation: Gospel Meeting Room\nPresentors: Trish Weber: Kennesaw State University, Winnie Dunlap: Kennesaw State University\nPresentation Type: Workshop'),
          ]),
    ],
  ),
  Entry(
    '10:00 - 10:50: Coffee Break \nLocation: Prefunction A',
  ),
  Entry(
    'Session L: 11:00 - 11:50',
    <Entry>[
      Entry(
          'Braving the Rapids Together: Shaping Spaces for Writing and Literacy',
          <Entry>[
            Entry(
                'A record number of freshman student writers, striving to brave the rapids of college academic discourse, came to the Tennessee State University Writing Center in Fall 2022. The TSU Writing Center staff were also navigating new waters of record enrollment, changes in leadership, understaffing, and no budget. Having opened our online and on-campus spaces to writers, students’ challenges and our challenges have prompted us to question how we can best support and advocate for writers and our writing center/space. We plan to discuss our progress reshaping our spaces and learn from others’ experiences. \n\nLocation: Blues Meeting Room\nPresentors: Lori Danley: Tennessee State University, Rhonda Kavan: Tennessee State University\nPresentation Type: Individual'),
          ]),
      Entry('Horizontal Mentoring', <Entry>[
        Entry(
            'Our mentoring program at MTSU embraces the same concepts of anti-hierarchical structure that we value in peer tutoring: a more equitable power distribution; collaborative knowledge-making; rhetorical listening. Likewise, in our mentoring structure, we rely upon a peer-to-peer mentoring structure. We find that this horizontal mentoring structure can create a fairer, more democratic space where tutors feel empowered to have meaningful discussions about their tutoring practices and experiences. In this panel, we will describe our peer mentor structure and include voices from peer mentors and their experiences fulfilling their roles. \n\nLocation: Blues Meeting Room\nPresentors: James Hamby: Middle Tennessee State University, Erica Cirillo-McCarthy: Middle Tennessee State University,  Keri Carter: Middle Tennessee State University\nPresentaiton Type: Individual'),
      ]),
      Entry(
          'Synching with rhythms of student experience: Expanding the conversation with new perspectives and structures in the writing center',
          <Entry>[
            Entry(
                'The Appalachian State writing center used the pandemic as an opportunity for renewal and reengagement in training student consultants. Using R. Mark Hall’s (2017) framework for developing an inquiry stance, the redesigned course places issues of equity and inclusion at the center of the curriculum to emphasize professional development for critical literacy work. The goal is to create a sustainable cycle that actively listens to and engages with the shifting rhythms of student learning styles while working for language justice. This panel will discuss curricular changes and student consultants will share highlights from their projects. \n\nLocation: Gospel Meeting Room\nPresentors: Julie Karaus: Appalachian State University, Zitalya Leathers: Appalachian State University, Mariana Bonilla-Quesada: Appalachian State University, Ian Daniel: Appalachian State University, Daniel Weaver: Appalachian State University\nPresentation Type: Panel'),
          ]),
      Entry(
          'Navigating Actual and Aspirational Campus Leadership for Writing Center Directors',
          <Entry>[
            Entry(
                'A recent call inquiring about Writing Center Administrators as campus leaders compelled our panelists to consider how we as Writing Center Directors are possibly positioned as de facto campus leaders. Initially, most of us experienced a moment of discomfort when considering ourselves as campus leaders. This panel hopes to explore that discomfort in hopes of moving towards a braver position where we move from “experts to leaders;” embrace a multimodal leadership framework that sees leadership less as climbing a hierarchical ladder and more as a relational grassroots movement, and consider our programs as aspirational spaces that work for a greater good within often fraught institutional ecologies. \n\nLocation: Rock Meeting Room\nPresentor: Jennifer Daniel: Queens University of Charlotte, John Bradley: Vanderbilt University, Aaron Beasley, Graham Stowe: Canisius College\nPresentation Type: Panel'),
          ]),
      Entry(
          'Antiracist Training Redesign: Planning and Implementing Change in the Center',
          <Entry>[
            Entry(
                'In August 2022, our center piloted the redesigned writing consultant training curriculum we had been developing for over a year. Although our training curriculum previously incorporated conversations about antiracism, our efforts here focused on creating a curriculum that centered antiracism robustly. In this presentation, I will address how our center’s administrative team prepared for our redesign, how we undertook the redesign effort, and what feedback our writing consultants shared in their training evaluations. As the lead on this project, I will also share recommendations for a successful redesign process. \n\nLocation: Ballroom C\nPresentors: Megan Minarich: Vanderbilt University\nPresentation Type: Individual'),
          ]),
      Entry(
          'I Hear You: Utilizing Authentic and Active Listening Skills with Multilingual Writers',
          <Entry>[
            Entry(
                'How do we listen to students in the writing center? Scholar Maureen McBride writes, “Essentially, the student must be listened to, respected, and trusted in order for self-actualization to occur” (2018). While listening is a critical skill for consultants to employ with all students, it can be especially useful with multilingual consultees. This session will familiarize participants with the concepts of authentic and active listening, which are two critical listening skills that can be utilized to help consultants effectively empathize with multilingual students, understand and address their concerns, and support them in authentic, written self-expression. \n\nLocation: Ballroom C\nPresentors: Mary Beth Bauermann: William & Mary\nPresentation Type: Individual'),
          ]),
      Entry(
          'Using Culturally Relevant Metaphors in Tutoring International Students',
          <Entry>[
            Entry(
                'Teaching American writing principles to international, non-native English writers is challenging. Using culturally relevant metaphors has been effective in advocating and bridging international students’ cultural identities to the American writing process. By using student-generated, culturally relevant metaphors to teach American writing principles, this session will provide you with several culturally relevant metaphors to use in your very next tutor training meeting. \n\nLocation: Ballroom C\nPresentor: : Brigham Young University-Hawaii\nPresentation Type: Individual'),
          ]),
      Entry('The Translingual Approach: Unifying A Writer’s Voice', <Entry>[
        Entry(
            'This presentation focuses on the significance and interpretations of adopting a translingual to writing, editing, and understanding text. Using explanations of this approach from both Horner (Language difference in writing: toward a translingual approach) and Canagarajah (Codemeshing in Academic Writing: Identifying Teachable Strategies of Translanguaging), the presentation analyzes on the practical application of the translingual approach, delving into the applicability of codemeshing in real writing examples, and emphasizing the root purpose of this approach: helping an author to engage in their own authentic voice. \n\nLocation: Ballroom D\nPresentors: Ekta Anand: Vanderbilt University\nPresentation Type: Individual'),
      ]),
      Entry(
          'Writing Confidence Differences Between English Language Learners and Non-English Language Learners in Asynchronous Tutoring Sessions',
          <Entry>[
            Entry(
                'Writing centers have experienced significant changes during the pandemic and current times to better accommodate students. Considering this, asynchronous tutoring has become more commonplace. However, few studies have focused on how asynchronous tutoring affects English language learners’ writing confidence. It is important, therefore, to examine confidence resulting from these sessions to see the differences between ELL and non-ELL writers. I will share data from a survey about writing confidence and include analysis from an independent samples t test comparing confidence scores between ELL and non-ELL writers resulting from asynchronous sessions. I will also discuss recommendations for further research and practice. \n\nLocation: Ballroom D\nPresentors: Keri Carter: Middle Tennessee State University\nPresentation Type: Individual'),
          ]),
      Entry(
          'Most Common Issues Writing Consultants Encounter with ESL Speakers; Practical Solutions',
          <Entry>[
            Entry(
                'This study surveyed university writing consultants to investigate the most common issues ESL students encounter with their writing and to overcome them. The findings suggest that ESL students commit different kinds of errors depending on their English language proficiency such as verbs agreement, misusing and overusing cohesive ties, and producing incoherent texts. Implications for coping with ESL students’ struggle and recommendations for future research directions are discussed in the presentation. \n\nLocation: Ballroom D\nPresentors: Bakheet Almatrafi: The University of Memphis, Uthamn Alzuhairy: The University of Memphis \nPresentation: Individual'),
          ]),
    ],
  ),
  Entry('Session M: 12:00 - 12:50', <Entry>[
    Entry(
        'Listen to Your Tutors: Discrimination Against Race, Gender, and the LGBTQ+ Community in the Writing Center',
        <Entry>[
          Entry(
              'This panel presentation explores how implicit biases and discriminations against sexuality, race, and gender can arise in writing centers, with local data and testimonies from the presenters’ writing center used to illustrate how these biases can adversely affect tutor-client interactions and program functionality as a whole. Four presenters will examine a specific dimension of this problem, with the first three speakers examining the importance of intersectionality in relationship to sexuality, race, and gender. The fourth speaker will discuss practical solutions that writing centers can implement to combat discrimination and promote inclusivity. \n\nLocation: Blues Meeting Room\nPresentors: Maggie, Sharp: The University of Alabama at Birmingham, Brianna Carnley: The University of Alabama at Birmingham, Emmett Christolear: The University of Alabama at Birmingham\nPresentation Type: Panel'),
        ]),
    Entry(
        'Transitioning Between STEM and Humanities Disciplines in the Writing Center',
        <Entry>[
          Entry(
              'Our workshop focuses on how liberal arts students and consultants often have to switch their disciplinary frames when transitioning in-between STEM to humanities classes. As writing consultants, we are tasked with helping students understand what different disciplines require and tackling the frustrations that can come along with this process. Our ultimate goal is to help consultants become better generalists consultants by understanding different disciplines and their writing styles. Workshop participants will hear from Callista Tyson and Shadira Chester, both liberal arts students at Berea College and staffers in the writing center, discuss how and their experience with their own transitions between disciplines. \n\nLocation: Gospel Meeting Room\nPresentors: Callista Tyson: Berea College, Shadira Chester: Berea College\nPresentation Type: Individual'),
        ]),
    Entry('Improving Data Literacy in Writing Studio Consultations', <Entry>[
      Entry(
          'This presentation will provide practical strategies for consultants to feel more empowered editing data analysis including questions consultants can ask themselves as a reader, some common data misconceptions to look for, and easy ways to help writers avoid them. \n\nLocation: Gospel Meeting Room\nPresentors: Chloe Hall: Vanderbilt University\nPresentation Type: Individual'),
    ]),
    Entry(
        'Teaching from the Outside: Life as a Writing Tutor and Federal Employee.',
        <Entry>[
          Entry(
              'This session will discuss the process of navigating my role as both writing tutor and federal employee at National Defense University, a Department of Defense-affiliated, graduate-level, Professional Military Education (PME), and how military culture aligns with Writing Center best practices.\n\nLocation: Gospel\nPresentors: Trela Anderson: National Defense University\nPresentation Type: Individual'),
        ]),
    Entry(
        'The Practical Application of Accessible Spatial Design for Sensory Issues in High School Writing Centers',
        <Entry>[
          Entry(
              'Little research exists in how to make writing centers accessible to people with sensory issues, especially in high school writing centers. However, by using flexible spatial design which can be changed for each individual tutee’s needs, high school writing centers, and therefore writing centers everywhere, can make their centers accessible. This proposal explores the possible solutions and limitations of the practical application of flexible, accessible spatial design in high school writing centers. \n\nLocation: Rock Meeting Room\nPresentors: Kaelyn Hardin: Middle Tennessee State University\nPResentation Type: Individual'),
        ]),
    Entry(
        'The (Writing) Center of Your Peace: Cultivating, Maintaining, and Expanding Safe Spaces From the Top Down',
        <Entry>[
          Entry(
              'This presentation explores the ways writing centers can build a safe space for consultants and clients alike by demonstrating how one center provides a model of positive reception. As a consultant with anxiety, I have been able to see how leadership at my writing center creates a safe and open space for everyone. From my first interview where I learned the center’s core value of kindness to my own session notes where I help students feel less alone in their writing, I will share effective strategies I have learned through experience which contribute to a safe and positive environment. \n\nLocation: Rock Meeting Room\nPresentors: Claire Scobie: Nova Southeastern University\nPresentation Type: Individual'),
        ]),
    Entry(
        'Strategies for Working with Writers with Autism Spectrum Disorder',
        <Entry>[
          Entry(
              'Many writers with Autism Spectrum Disorder might find common aspects of the Writing Center challenging. This presentation highlights best practices for facilitating productive consultations for writers with ASD, and includes actionable strategies and practical exercises to facilitate learning. This presentation centers on diverse practices which are accessible to writers at various points on the autism spectrum.\n\nLocation: Rock Meeting Room\nPresentors: Kat McKay: University of Tennessee Chattanooga\nPresentation Type: Individual'),
        ]),
    Entry(
        'Meeting Them Where They Are: (Re)Considering Outreach and Social Media',
        <Entry>[
          Entry(
              'This three-presentation panel explores the topic of writing center outreach and promotion post-pandemic. The first presentation discusses a general focus on outreach at STEM institutions and describes how services outside of the typical session contribute to outreach. The second highlights a case study on revamping social media, and the third addresses how outreach initiatives serve as active practice for consultants. The panel concludes with takeaways regarding implementation at other institutions.\n\nLocation: Ballroom C\nPresentors: Lily Soetebier: Georgia Institute of Technology, Abigail Reams: Georgia Institute of Technology, Alyssa Ramos: Georgia Institute of Technology \nPresentation Type: Panel'),
        ]),
  ]),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;
  final font = const TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 0, 0, 0));

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
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
