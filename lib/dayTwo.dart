import 'package:flutter/material.dart';

///This class works identicically to all the other days of the event,
///using a list to hold all of the events
///and a scaffold to hold the items in place.
class DayTwo extends StatelessWidget {
  const DayTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Friday, Feb 10'),
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
  Entry('8:00am - 4:00pm: Registration and Information'),
  Entry(
    '9:00-10:30am: Incoming board meeting (2023-24 board members, including incoming) \nLocation: Ballroom B',
  ),
  Entry(
    'Session F: 8 - 8:50',
    <Entry>[
      Entry(
        'Future-Proofing the Writing Center',
        <Entry>[
          Entry(
              'Building upon our success during the pandemic to increase our consultation numbers and class visits, The Writers’ Studio at SCAD is now moving forward by taking inspiration from design management and focusing on how we can incorporate design innovation and creative problem solving in our everyday practices. By focusing on gathering important data, fostering positive relationships, and implementing effective technology, the writing center has the means to face any challenge that comes its way and adapt as needed. \n\nLocation: Blues Meeting Room\nPresentors: Jennifer Johnson: Savannah College of Art and Design\nPresentation Type: Individual '), //abstract
        ],
      ),
      Entry(
          'Post-Pandemic Problem Solving: Harmonizing a Writing Center, Its Website, and WCOnline at UT Martin',
          <Entry>[
            Entry(
                'The COVID-19 pandemic has prompted the UT Martin Writing Center to transform its in-person walk-in setup into a hybrid appointment-based model. The center now uses WCOnline for appointment management and recordkeeping and focuses its website on explaining its WCOnline setup. This system has been functional but not optimal. With UT Martin now migrating its website system to SharePoint, and WCOnline updating its system, the center has a chance to shift its focus from expediency to usability and update its system accordingly. In this presentation, tutors share how user experience research has helped the center optimize its website and WCOnline setup. \n\nLocation: Blues Meeting Room\nPresentors: Klara Nichter: University of Tennessee at Martin, Elijah Davidson: University of Tennessee at Martin,  Ryesa McGehee: University of Tennessee at Martin\nPresentation Type: Individual'),
          ]),
      Entry(
          'Consultant Training and Dispositional Approaches During Times of Change and Transition',
          <Entry>[
            Entry(
                'During this presentation, we will review what the writing center literature affirms about developing consultant dispositions during times of transition and change. We will also consider areas of this research that could be further explored. Our discussion will reflect on how tutor training is often transformed by the emotional responses that naturally occur during times of great change and transition. In response to this, we will discuss how staff may appropriately respond to the dynamic needs of consultants in such times.\n\nLocation: Blues Meeting Room\nPresentor: Christina Davidson: University of Louisville\nPresentation Type: Individual'),
          ]),
      Entry(
          'Developing a Culturally & Linguistically Responsive Writing Center',
          <Entry>[
            Entry(
                'While nearly every writing center professes a commitment to diversity, what does empowering writers with minoritized identities look like in practice? Perhaps it looks like striking a balance between giving students access to the communicative tools needed for academic success and questioning the pressure to assimilate. Aiming for this delicate balance, the four panelists, all of whom work at the Miller Writing Center at Auburn University, will present practical strategies for writing centers to support cultural and linguistic diversity. These strategies include calling in and out, easing international students’ transitions, recruiting multilingual tutors, and educating all tutors in TESOL pedagogy.\n\nLocation: Gospel Meeting Room\nLayli Miron: Auburn University, Ashanti Kira Belcher: Auburn University\nPresentation Type: Panel'),
          ]),
      Entry(
          'Building Bridges Between Universities and Communities: A Participatory Planning Workshop for Enacting Change through Community Writing Centers',
          <Entry>[
            Entry(
                'University writing centers’ work today encompasses more than just helping writers through the writing process. Writing centers frequently expand their reach into their local communities, beyond the borders of the university, to become active makers of positive change. One way this happens is through the creation of community writing centers. This workshop provides participants with hands-on activities for reflecting on values and potential community partners during the planning stages of starting a community writing center. Framing discussions will be facilitated by two community writing center co-directors and two undergraduate consultant volunteers.\n\n Location: Rock Meeting Room\nPresentors: Nicole Emmelhainz: Christopher Newport University, Brooke Covington: Christopher Newport University, Leslie Bond: Christopher Newport University, Abby Asuncion: Christopher Newport University\nPresentation Type: Workshop'),
          ]),
      Entry(
          'Contributing to Our Writing Center Community through the Development of New Roles',
          <Entry>[
            Entry(
                'Representatives from the APSU Writing Center, including our front desk worker, graduate student Assistant Director, and Director, will all share our perspectives over our own tasks contributing to the overall atmosphere of our Writing Center.  Topics included in this discussion include developing our materials/promotional aspect, new experience in a graduate student Assistant Director role, and our Writing Centers goals moving forward.\n\nLocation: Ballroom C\nPresentors: Allie Johnston, Sasha Chunchukov Lauren Cowan: Austine Peay State University \nPresentation Type: Roundtable'),
          ]),
      Entry(
          'It’s All New: Building a WAC Program Through the Writing Center',
          <Entry>[
            Entry(
                'Not long ago, Spartanburg Methodist College became a four year college, and we are now developing new forms of support for our students. I will be sharing stories of collaboration, innovation, and struggle as the writing center is developed into a center for a writing across the curriculum initiative designed to help students at all levels.\n\n Location: Ballroom D\nPresentors: Kristen Welch: Spartanburg Methodist College\nPresentation Type: Individual'),
          ]),
      Entry(
          'Battling Anxiety in the Writing Center: Creating a Neurodivergent Resource Network',
          <Entry>[
            Entry(
                'As a long-time professional writing tutor at the University of North Georgia, the goal of our writing center has always been to provide the most inclusive service possible, and I have identified a defect needing immediate intervention: some of our materials and practices are not easily accessible for neurodivergent students, such as those on the autism spectrum. Through the implementation of an online resource network, I hope to increase the reach of the writing center to those neurodivergent students who feel that the writing center is a place to fear instead of to thrive.\n\nLocation: Ballroom D\nPresentors: Heaven Holcomb: University of North Georgia\nPresentation Type: Individual'),
          ]),
      Entry('“I Don’t Care Anymore”: A Burnt-Out Cry for Help?', <Entry>[
        Entry(
            'Burnout: it’s inevitable. Burnout affects students of all ages, backgrounds, and demographics – it does not discriminate. What starts out as multiple late-nights can snowball into overwhelming feelings of stress, anxiety, and in some cases, numbness. What causes burnout? Who is the most susceptible to it? What can educators do to support their students, and what can educators do to support themselves? Presenters will explore some catalysts, symptoms, and remedies to student and teacher burnout.\n\nLocation: Ballroom D\nPresentors: Ashley Gross: Western Carolina University, Caitlyn Cable: Western Carolina University\nPresentation Type: Individual'),
      ]),
      Entry(
          'ChatGP-anxieTy: Learning to Work with AI in Classrooms and Writing Centers',
          <Entry>[
            Entry(
                'Artificial intelligence-based tools such as ChatGPT have recently received widespread interest because they make the drafting and revision of certain kinds of texts trivial, and they have invited predictions that writing instruction and student ethics will be forever compromised. Join writing center practitioners and educators as we explore the impact of AI-based writing support on student learning and the work of writing centers.\n\nLocation: Ballroom E\nPresentors: Eric Mason Mario D’Agostino, Nova Southeastern University, Presentation Type: Roundtable'),
          ]),
    ],
  ),
  Entry(
    'Session G: 9 - 9:50',
    <Entry>[
      Entry(
          'Staying on Course: Currents of Collaboration and Transition in a Multi-Center Environment',
          <Entry>[
            Entry(
                'In this panel presentation, we will discuss the framework of shared leadership for the four discrete writing centers at the University of Mississippi, with particular focus on how the structure allows for leadership transitions and unforeseen challenges to our work, such as implementing changes to support our students during the COVID-19 pandemic. This structure enabled the four centers to not only survive but thrive during the COVID-19 pandemic, each building on resources provided and supported by the other three. This panel will also address the collaborative assessment of our centers and how the pandemic required us to reexamine our services and resources. We strive to make sure each writing center provides a “safe harbor” for UM students, even as we serve a diverse student population. Much like a crew must work as a coordinated team to captain a boat down a river, our four centers and directors consistently help each other maintain our course. \n\nLocation: Blues Meeting Room\nPresentors: Claire Mischker: University of Mississippi, Ellen Shelton:  University of Mississippi, Jeanine Rauch: University of Mississippi, Deidra Jackson: University of Mississippi; Brad Campbell: Southern Utah University\nPresentation Type: Panel'),
          ]),
      Entry('Infusing Social Emotional Learning into Tutor Training', <Entry>[
        Entry(
            'Educators at all levels have seen an increase in anxiety and depression over the last several years, especially post-pandemic. So how are we training our tutors to help their peers both academically and emotionally? In this workshop, we will explore the methods needed to train tutors to consider the role of emotional intelligence and emotional management in the practice of tutoring. This discussion will incorporate several examples of how social emotional learning is implemented in my tutor training course, including mindfulness practices, breathing training, and creating a calming physical space. Participants will be invited to consider how to incorporate social emotional learning into their own tutor training contexts. \n\nLocation: Gospel Meeting Room\nPresentors: Rachel Dunaway: Donelson Christian Academy\nPresentation Type: Workshop'),
      ]),
      Entry(
          'A cross disciplinary approach to translanguaging using a dialogical pedagogy in writing and multimodal composition',
          <Entry>[
            Entry(
                'Translanguaging in writing occurs with very little pedagogical effort from teachers, however, research shows that it is significantly more challenging in literacy than in speaking. In this workshop, we will explore four strategies of translanguaging in writing. Translanguaging is not just for students who speak multiple languages, but also for those who speak multiple dialects.\n\nLocation: Rock Meeting Room\nPresentors: Hannah Pitner: University of Memphis\nPresentation Type: Workshop'),
          ]),
      Entry(
          'Towards a New Normal: The Writing Center is (as?) a Virtual Space and an In-Person Space',
          <Entry>[
            Entry(
                'This panel explores how the rhythms of the writing center were interrupted and transformed amid the challenges of the COVID-19 pandemic. It will consist of three peer consultant-led presentations: the first will provide background on the shifting needs of center staff and users, the second explores the spatial nuances of center accessibility, the third takes into account center missions and the implications of mitigating as well as capitalizing on the affordances of the center’s new tempo. We hope that the discussion generated by this panel will inform the evolution of a center as it adjusts to “new normals”. \n\nLocation: Ballroom C\nPresentors: Alyssa Ramos: Georgia Institute of Technology , Lily Soetebier: Georgia Institute of Technology,  Steph Oliva: Georgia Institute of Technology\nPresentation Type: Panel'),
          ]),
      Entry(
          'Write It Down So You Don’t Forget: Using Foundational Writing Center Documents to Inscribe Our Commitments to Racial Justice',
          <Entry>[
            Entry(
                'How do we maintain focus, even as we heal and recover, on the urgent matters of equity and racial justice that came into focus during the COVID-19 pandemic? During the 2020 BLM protests, my institution, led by student activists, developed an anti-racist strategic vision called the JEDI (justice, equity, diversity, and inclusion) Initiative. In this talk, I will discuss my staff’s effort to maintain focus on the campus-wide equity goals of JEDI by incorporating them into the fabric of our center’s life through a process of writing them into our mission statement, consultant handbook, and training program. \n\nLocation: Ballroom D\nPresentors: Allison Douglas: Wofford College\nPresentation Type: Individual'),
          ]),
      Entry('Translingualism as a Path in Changing Waters', <Entry>[
        Entry(
            'One of the major changes in colleges and universities today is the increasing number of multilingual writers on our campuses. This presentation advocates for translingualism as a key value for writing centers and a way to make all writers feel welcome in our centers. It considers the contributions of authors such as Canagarajah, Matsuda, Bawarshi, and others, who question the dominance of one kind of English in the academy. Ultimately, this presentation calls for the decolonization of our writing centers and the embrace of all writers who use them. \n\nLocation: Ballroom D\nPresentors: Emily Pucker: University of Alabama\nPresentation Type: Individual'),
      ]),
      Entry(
          'Writing Center in the Face of Anglophone-centrism: A Philosophical Genealogy and Critique of English Language Tutoring from a Multicultural and Decolonial Perspective',
          <Entry>[
            Entry(
                'Historically found in English-speaking institutions while commonly working with writers who are English-language learners (ELLs), the writing center is often viewed as either an amplifier of Anglophone-centrism or a site of liberation that assists ELLs to bolster their confidence in English writing and to retain their cultural and linguistic identity. Combining the historical approach, the theoretical lenses of multiculturalism and decolonial thought, and the lore of my own English learning and tutoring experiences, I aspire to reflect on and revise typical ELL tutoring practices in the writing center and promote a pedagogy that might bring greater equality, reciprocity and inclusion. \n\nLocation: Ballroom D\nPresentors: Peiying (Adeline) Yang: Emory University \nPresentation Type: Individual'),
          ]),
      Entry(
          'Tutoring Multilingual Writers at Hispanic-Serving Institutions',
          <Entry>[
            Entry(
                'At HSIs, Writing Center tutors explore both barriers and promises of enhancing the tutoring of writing. Our research explores ways to encourage student visits to the writing center. Contributing to more culturally relevant approaches are projects about the familia approach and about how cultural differences affect tutoring style. Projects focused on tutoring methods include addressing perceived language barriers, using TESOL to design scaffolding, helping students acquire and use academic language, asserting the importance of grammar to communicating ideas, and maintaining students’ own ideas and voices. All of these studies occur in the context of the delivery of tutoring help: a study on implementing digital technology for synchronous and asynchronous tutoring sessions addresses this context.\n\nLocation: Ballroom E\nPresentors: Robin Alvarez: Sul Ross State University , Sarah Roche: Sul Ross State University ,  Kiahna Garcia: Sul Ross State University, Anthony Quintana: Sul Ross State University , Melissa Montoya: Sul Ross State University , Jason Fortner: Sul Ross State University , Brooke Manual: Sul Ross State University\nPresentation Type: Panel'),
          ]),
    ],
  ),
  Entry(
    'Session H: 10:00 - 10:50',
    <Entry>[
      Entry(
          'Using Transfer Theory and Genre Awareness to Support Creative Writing',
          <Entry>[
            Entry(
                'This presentation discusses how a small case study gauges creative writing’s perceived place in the writing center and how the center can positively reframe that place through transfer theory and genre awareness. By working from transfer theory and genre awareness, writing centers can help students see how writing skills apply across seemingly disparate kinds of writing including academic, professional, and creative writing. This presentation identifies and resolves disconnections between writing centers and creative writing as part of the center’s mission to advocate for all writing. \n\n Location: Blues Meeting Room\nPresentor:Michael McCall: Nova Southeastern University\nPresentation Type: Individual'),
          ]),
      Entry(
          'Examining Creative Student Writers’ Perceptions of the Writing Center',
          <Entry>[
            Entry(
                'This research project aims to investigate student-writer perceptions of the USM writing center as it relates to personal works, especially creative writing projects. By conducting this study, I hope to answer the question, “what benefits and services, if any, do student-writers believe the writing center has to offer for those working on personal writing projects?” I also expect to provide concrete recommendations to the center on how to improve services for creative projects and how to successfully outreach to creative writers throughout the institution. \n\nBlues Meeting Room\nPresentors: Eden Duley: University of Southern Mississippi\nPresentation Type: Individual'),
          ]),
      Entry(
          'Restoring Orality to the Writing Process through Writing Centers',
          <Entry>[
            Entry(
                'Writing Centers can be the place where orality returns to the writing process. Situating the work of a Writing Center in the context of oral tradition incorporates customs of many minority cultures where the oral tradition is strong. Orality brings writing into the physical world, instead of allowing it to remain an internal, individual experience. Verbally discussing ideas allows the reader to expand and explain their thoughts and allows the tutor to be able to help determine the most effective ways to translate the thoughts into written words.\n\nLocation: Blues Meeting Room\nPresentors: Lydia Ezell: Georgia State University\nPresentation Type: Individual'),
          ]),
      Entry(
          'Consultants as Captains Guiding Students in the Rhetorical Current ',
          <Entry>[
            Entry(
                'TThe Northwest Community College and University of Mississippi DeSoto Writing Centers serve as multiliteracy sites of advocacy for students. Our centers are responding to the changing needs of students by addressing the knowledge gap created by the pandemic.  Consultants have adopted extensive modeling of audiences in their tutoring and also take this approach with literacy practices. Modeling skills in real-time is a quick way to improve understanding in a less didactic setting. The efficacy of modeling is bolstered by the collaborative nature of the writing center, where consultants serve as guides by employing empathetic listening skills. \n\nGospel Meeting Room\nPresentors: Jeanine Rauch: University of Mississippi, Natacia Faulkner: Northwest Community College, Sam Tiller: Northwest Community College, Trevor Wallace: University of Mississippi,  Rivers Mallory: University of Mississippi, Jennifer Cole: University of Mississippi, Sam Allen: Northwest Community College, Austin Beach: Northwest Community College, C.W. Weaver: Northwest Community College, Patrick Jones: Northwest Community College\nPresentation Type: Panel'),
          ]),
      Entry(
          'Promoting a Sense of Belonging for Tutors: Acknowledging Tutors’ Invisible Disabilities and Strategies for Handling Difficult Clients',
          <Entry>[
            Entry(
                'The pandemic, for better or for worse, has created opportunities for tutors and administrators to address the ways that we create inclusive educational spaces. In this panel, two graduate tutors from the University of South Carolina will draw attention to two areas primed for change: accommodating disabled tutors and preparing tutors for the ways that remote modalities may foster antagonistic sessions.\n\n Location: Rock Meeting Room\nPresntors: Katie Long: University of South Carolina, Deidre Evans Garriott: University of South Carolina\nPresentation Type: Panel'),
          ]),
      Entry(
          '“...at least for now”: A Story About Undergraduate Writing Centers and Labor Compensation in Five Parts',
          <Entry>[
            Entry(
                'This presentation unpacks data from a recent IRB-supported survey of writing centers focusing on undergraduate tutor labor and wages. With over 125 responses from across the United States, this survey both showcases both the impact of undergraduate peer writing support and the problems that come with low wages for such meaningful labor, especially in Southern states. This presentation is part of a larger, ongoing project concerning undergraduate campus cultures of writing, peer writing support programming based in writing centers, and fiscal value. Given the lessons of the past two-plus years, and the choices we make in how and where we spend our time and efforts, this project aims to both elevate and amplify the stellar work of undergraduate peer tutors while critiquing both explicit and implied systems of power that make such low wages a far-too-common practice in our region. By systematically investigating such practices, combined with taking the stories of writing center directors and undergraduate tutors seriously, can we begin to enact meaningful social and economic change that recognizes the value of collaborative learning -- especially given the lessons of the past two-plus years.\n\n Location: Ballroom C\nPresentors: Scott Whiddon: Transylvania University\nPresentation Type: Individual'),
          ]),
      Entry(
          'How Explicit Organizational Values Influence Peer Tutor Development',
          <Entry>[
            Entry(
                'Peer consultants (PCs) play a significant role in higher education, but rarely do they receive intentional and ongoing development. As Etienne Wenger (1998) argues, “whereas training aims to create an inbound trajectory targeted at competence in a specific practice, education must strive to open new dimensions for the negotiation of self” (894). How do we get there? The speaker uses Chickering’s (1969) theories about developmental vectors and educationally influential environments to highlight how the U.S. Military Academy at West Point effectively develops its PCs by facilitating a leadership identity and providing professional development to make them competent and confident practitioners.\n\n Location: Ballroom C\nPresentors: Vittoria Rubino: U.S. Millitary Academy at West Point\nPresentation Type: Individual'),
          ]),
      Entry(
          'Citing Center to Writing Center: Using Citation Resources to Teach Critical Thinking, Choice, and Agency in Research-Based Writing',
          <Entry>[
            Entry(
                'Writing centers have sought to influence writing instruction through leadership around plagiarism and citation practices. In our center, we saw a need to develop citation resources in response to a revised academic honesty policy. Rather than laying out citation rules, we sought to teach citation choices, such as who writers choose to recognize as authorities, and how writers make decisions between preserving the words of writers, mixing original source wording with their own, and writing entirely in their own words. This presentation will outline tutor training practices and resource creation that supports critical thinking, choice, and agency in research-based writing.\n\nLocation: Ballroom D\nPresentors: Julie Wilson: Warren Wilson College\nPresentation Type: Individual'),
          ]),
      Entry(
          'Learning about the Use of Sources in Writing Consultations', <Entry>[
        Entry(
            'This presentation will introduce strategies used by writing consultants during writing consultations on source use, such as direct quoting. The findings of my study show that strategies such as questioning about selection of passages for direct quoting or commentaries on selected passages lead to a better and conscious understanding of source use among international graduate students. I will also discuss how to prepare writing consultants for these consultations.\n\nLocation: Ballroom D\nPresentors: Romana Hinton: Augusta University\nPresentation Type: Individual'),
      ]),
      Entry(
          'A Center of All Trades: Applying Writing Theory Across Disciplines',
          <Entry>[
            Entry(
                'Many educational institutions have Writing Centers which focus solely on building writing skills. However, at Donelson Christian Academy, we have been experimenting with applying writing center theory to a variety of other disciplines. We will discuss our methods of integrating theory to develop better tutoring practices across the curriculum, learning new strategies from each field. In this way, we aspire to help other institutions start making connections between disciplines and create a center of all trades.\n\nLocation: Ballroom E\nPresentors: Trevor Jones: Donelson Christian Academy, May Queener: Donelson Christian Academy Jo Wizer: Donelson Christian Academy, Jake Dockstader: Donelson Christian Academy, Jason Joseph: Donelson Christian Academy, Jr. , Eli Marshall: Donelson Christian Academy, Kayla Rothman: Donelson Christian Academy\nPresentation Type: Panel'),
          ]),
    ],
  ),
  Entry('11:00 - 1:00: Keynote Lunch, Awards, & Address', <Entry>[
    Entry(
        '“whose grammar are you hoping I’m teaching?”: Tools of Linguistic Justice and How We Can Use Them, An Offering',
        <Entry>[
          Entry(
              'What rules do you want us to use as we draft and revise here? What tone are you using in this text? Is it playful? Is it serious? Must it be? Who is your audience and how do you want to address them? Questions that do not assume an answer or even a list of possible answers. Because I do not know the answer. Simple. Also complex. These questions are targeted toward a foundation of white supremacist heteronormative linguistic practices and from linguistic assumptions, a violence carried by normalized rules that assume one rule of a language. bell hooks wrote, “Our visions of tomorrow are most vital when they emerge from the concrete circumstances of change we are experiencing right now.” During this address, I will consider the separate parts of a grammar and will apply a practice of radical interconnectedness that helps us to crack those assumptions open and then to develop linguistic justice in various forms with our students, our clients, writers, our colleagues, and with ourselves.\n\nLocation: Ballroom A\nPresentor: Tawny LeBouef Tullia: Christian Brothers University\n\nPresentor Bio: Dr. Tawny LeBouef Tullia (she/her/hers) currently serves as the Dean for the Rosa Deal School of Arts at Christian Brothers University in Memphis, Tennessee. Previous to that appointment, Tullia served as the Writing Program Administrator. In that role, she collaborated with colleagues to re-write and re-vision what a First-year Writing Program needed to be to serve the students entering their educations at CBU. That Program now includes courses that better support the needs of new-to-university writers, multi-lingual learners, and includes a choice-based and multiple measures placement protocol. Tullia teaches courses on rhetoric, gender, and race; rhetorical theory; and organizes application courses around community-engaged learning. Tullia’s research focuses on sport and rhetoric at the intersections of race and gender, as well as building community in classroom and professional spaces, using antiracist practices and a commitment toward Beloved Community. Dr. Tullia has published work on the importance of authenticity and building community in the classroom. That work appears in the volume On Teacher Neutrality: Politics, Praxis, Performativity, published by Utah State University Press. The chapter titled “Turning Resistances into Engagement” was written collaboratively with Dr. Erika Johnson.')
        ])
  ]),
  Entry(
    'Session I: 2:00 - 2:50',
    <Entry>[
      Entry(
          'The Student’s Choice: An Analysis of Student Consultation Preference Update',
          <Entry>[
            Entry(
                'This panel presentation presents preliminary findings from a quantitative study examining first-time writing center users’ decisions about consultation modality. I examine what modalities—in-person, live online, and written feedback—are most common by students’ academic cohort (freshman, sophomore, junior, senior, graduate status) and identify patterns in how initial decisions impact future use \n\nLocation: Blues Meeting Room\nPresentors: Kaylee Klosson: Augusta University\nPresentation Type: Individual'),
          ]),
      Entry('Fun and Games in the Multimodal Writing Center', <Entry>[
        Entry(
            'To what degree can we incorporate fun and games into writing center work without being labeled as lacking seriousness or failing to provide professional support to student writers? This presentation will explore the resurgent interest in “play” in relation to writing centers, and what writing center practitioners can learn from game designers and game studies scholars, especially in the context of providing support to students for composing multimodal works. \n\nLocation: Blues Meeting Room\nPresntors: Eric Mason: Nova Southeastern University, Julia Mason: Florida Atlantic University\nPresentation Type: Individual'),
      ]),
      Entry(
          'Updating Writing Center Practices: Embracing the Digital and Multimodal',
          <Entry>[
            Entry(
                'The reexamination of writing center services accelerated because of the pandemic. One area that should be reconsidered is how writing center position themselves in relation to writing. Rather than limit themselves to writing, writing centers should rebrand (either metaphorically or literally) as composition centers that can work with a wide range of composition forms; this may include websites, slide presentations, public speaking, social media, and more. \n\nLocation: Blues Meeting Room\nPresentors: Joseph Cheatle: University of Southern Mississippi\nPresentation Type: Individual'),
          ]),
      Entry(
          'The Gathering of Waters: Tears, Taps, and Trade-offs in a Trauma-Informed Writing Center in Jackson, MS',
          <Entry>[
            Entry(
                'Jackson and Memphis are connected by flowing water, both the Mississippi River and lead-tainted running water. Painful histories of oppression, powerful histories of activism and change, Language flows, too, rich literatures and dialects, between the cities, through our mouths, families, hometowns, colleges, writing centers, sessions. In February of 2020, I gave a talk at SWCA about radical hospitality in the two-year writing center and my new center’s resulting success in adopting a peer tutoring model. A few weeks later, the pandemic hit, and, while my center was able to move from a PBI grant to a permanent home in the English department and return to in-person services in fall 2020, bereavement notices of the deaths of Hinds retirees, family members, and employees, including one of our Vice Presidents, flowed into our Outlook mailboxes. Needless to say, this tragic change overshadowed the positive changes of a person-first approach and a light-filled new space. This presentation about change, advocacy and trauma draws on the narratives and experiences of my students and colleagues as well as research conducted since the pandemic about trends in enrollment, student engagement, and technology. Our operating framework of radical hospitality has been tested but remains in effect, even as extending ourselves brings strain and tension. Last winter, my colleague Kalonni Smith, the Tech Nest coordinator, a trusted confidante of students because of her warmth and thoughtfulness, and a frequent collaborator in student advocacy, and I began to plan a series of talks about trauma-informed student services based on Brené Brown and Tarana Burkes anthology You Are Your Best Thing. However, our attempts to connect interrupted were by unscheduled outpourings of urgent student distress, often caused by the very traumas we hoped to explore in a safe context mediated by professional boundaries. Meanwhile, a year-long sequence of developmental reading and writing courses have been replaced by a catch-all Beginning-Intermediate hybrid English course and a new Student Success Center, which gathers student information from Canvass "Dropout Detective." I have begun to teach essay workshops to our Adult Education/GED students. However, there is no testing for mastery in tutoring, and I am concerned that many students who already place into Comp I have no history of successful composition behind them. How do technologies meant to address the internal characteristic of self-regulation play into or against our framework? How much is it reasonable to expect of our students in the wake of mass grief and loss? How does burnout affect Writing Center operations, and what mitigations can be made? How can our students language and experience be safeguarded in an era of district-wide mandatory rubrics and goals? This presentation will amplify and attempt to answer these questions. \n\nLocation: Gospel Meeting Room\nPresentor: Alissa Elliott: Hinds Community College, Jackson ATC\nPresentation Type: Individual'),
          ]),
      Entry(
          'Submerged Stories: Legibility, Public Memory, and the Writing Center',
          <Entry>[
            Entry(
                'There are many Indigenous sites that are covered in water by way of reservoirs. What role can writing centers play in making these submerged stories legible (King 2017)?\n\nLocation: Gospel Meeting Room\nPresentor: Chelsea Murdock: Clemson University\nPresentation Type: Individual'),
          ]),
      Entry('Assessing Access in a Changing Writing Center', <Entry>[
        Entry(
            'In this panel, four members of a writing center at a mid-sized research university reflect on their efforts to enhance accessibility as part of their growing center’s recent expansion and rebranding. The presenters detail their efforts to improve the center’s accessibility and share practical suggestions with respect to advertisement, procedures, and synchronous and asynchronous writing consultations.\n\nLocation: Rock Meeting Room\nPresentor: James Garner: Augusta University, Romana Hinton: Augusta University,  Hannah Soblo: Augusta University, Odessa Hinton: Augusta University\nPresentation Type: Panel'),
      ]),
      Entry('Why You Should Care about C.A.R.E.', <Entry>[
        Entry(
            'Come join the C.A.R.E. Committee to learn about the program. The "Center Acknowledgment and Recognition of Excellence" (C.A.R.E.) program was developed to use institutional and organizational research to provide enhanced resources and opportunities for members of the writing center community. Because the certification is awarded by other writing center professionals, it is more meaningful for the work we do. The SWCA invites centers to apply for certification to be recognized for the value they bring to their consultants, clients, and institutions. Certification applications are welcomed on a rolling basis, and reviewed tri-annually.  The presenters will be there to share the program’s benefits, offer encouragement, and help you get started on the process.\n\nBallroom B\nPresentors: Jennifer Smith Daniel: Queens University of Charlotte, Layli Miron: Auburn University\nPresentation Type: SWCA-CARE Presentation'),
      ]),
      Entry(
          'Second-Act Students: Strategies and Considerations for Working with Non-traditional Students',
          <Entry>[
            Entry(
                'This panel asks how writing centers can better support non-traditional students. The National Center for Education Statistics defines such students as being over 24 and having “family and work responsibilities as well as other life circumstances that can interfere with successful completion of educational objectives.” Three presenters will connect survey data with their life experiences and work with non-traditional students. The first offers strategies for introducing non-traditional students to academic writing. The second shares best practices for working with non-traditional multilingual students. The third considers the dynamic between non-traditional students and tutors and offers strategies tutors can use to adapt.\n\nLocation: Ballroom C\nPresentors: Mike Boody: University of Alabama at Birmingham, Lauran McInnis: University of Alabama at Birmingham, Katie Oakley: University of Alabama at Birmingham\nPresentation Type: Panel'),
          ]),
      Entry(
          'Promoting the Creative: Benefits of Introducing Clubs to Student and Center',
          <Entry>[
            Entry(
                'Writing centers are known for their purpose of assisting students with traditionally academic and professional writing, and are often seen as spaces where only the academic and professional exist. Introducing and promoting book clubs and creative writing clubs that are for pleasure rather than academic pursuit is an avenue for writing centers to recognize and support positive and literacy-based student interactions, generate more student involvement with the writing center, and further promote leadership opportunities and development within student tutors.\n\nLocation: Ballroom D\nPresentor: Duke Jenkins: Kennesaw State University\nPresentation Type: Individual'),
          ]),
      Entry('Constructing a Writing Center Archive', <Entry>[
        Entry(
            'Attempts to systematically study the history of writing centers at US-based universities are relatively rare; rarer still are efforts to construct writing center archives, or to theorize what such an archive might look like. This paper offers a nascent attempt at the latter. Drawing on both my professional training as a historian and my engagement with writing center praxis through my work as a graduate student consultant at a writing center, I explore the following questions: what would a writing center archive consist of, and what would be the utility of such an archive?\n\n Ballroom D\nPresentor: Jacqueline Allain: Duke University\nPresentation Type: Individual'),
      ]),
      Entry('Through the ears- an audio presentation', <Entry>[
        Entry(
            'With many different ways to give and receive information, we as writing studios should be prepared to follow trends and accommodate our writers. So today in hopes of working towards that we will be discussing the audio aspect of multimodality. In the terms of our writing studio, that refers to podcasting, radioing, and even songs. We feel as a writing studio that learning more about audio and our work is extremely important as we continue to grow.\n\n Ballroom D\nPresentors: Nijah Colston: Warren Wilson College, Noah Hoyle: Warren Wilson College, Trevor Nail, Sami Weinstein: Warren Wilson College\nPresentation Type: Individual'),
      ]),
      Entry(
          'Piloting Partnerships: Expanding Multimodal Tutoring through Undergraduate Research Support',
          <Entry>[
            Entry(
                'This roundtable focuses on a pilot collaboration between the Writing Center and the Office of Undergraduate Research at a public liberal arts university. This initiative enables more students to access Undergraduate Research by providing support for oral and written communication skills. An undergraduate peer tutor will discuss her contributions from her perspective as a STEM student, and a graduate tutor will offer viewpoints gathered through observations. The Writing Center Director and the Faculty Director of Undergrad Research will review their process of developing a collaborative vision for aligning Writing Center support with the Undergrad Research programs already in place.\n\n Ballroom E\nPresentors: Joy Bracewell: Georgia College & State University , Grace Gote: Georgia College & State University , Rebecca Hathaway: Georgia College & State University,  Stefanie Sevcik: Georgia College & State University \nPresentation Type: Roundtable'),
          ]),
    ],
  ),
  Entry('3:00 - 4:00: State Network Meeting', <Entry>[
    Entry('See Below For School', <Entry>[
      Entry(
        'Alabama Network: Blues Meeting Room\nFlorida Network: Gospel Meeting Room\nGeorgia Network: Rock Meeting Room\nKentucky Network: Ballroom A\nMississippi Network: Ballroom B\nNorth Carolina Network: Ballroom C\nSouth Carolina Network: Ballroom D\nTennessee Network: Ballroon E\nVirgina Network: Founders Room',
      )
    ])
  ]),
  Entry(
    '4:00 - 6:00: Grad School Mixer:\nLocation: Founders Room',
  ),
];

class EntryItem extends StatelessWidget {
  EntryItem(this.entry);

  final Entry entry;
  final font = const TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 0, 0, 0));

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title, style: font),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
