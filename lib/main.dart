import 'package:flutter/material.dart';
import 'package:wcc_app/NavBar.dart';
import 'package:wcc_app/PreGame.dart';
import 'package:wcc_app/ScheduleNav.dart';
import 'package:wcc_app/Second_Layer.dart';
import 'package:wcc_app/dayThree.dart';
import 'package:wcc_app/dayTwo.dart';

///The main library runs the application. Inside of it, there is the main function which runs the app, simply called "WccApp." It also has ScheduleNav which is a structure that holds all of the different elements of the homepage from the map to the different buttons located on the mainpage.
void main() {
  runApp(const WccApp());
}

///Class WccApp is the root of the application. Stateless.
///1) MaterialApp() serves as the root for navigation
///2) AppBar is the little bar on top, built in function. This is customizable, doesn't have to be blue3) NavBar() is the navigation pushes are what page the user wants to go (seperate file).
///-After NavBar, splits into the file Second_Layers.
///4) ScheduleNav() is located in Second_Layers as well and the next class below.

class WccApp extends StatelessWidget {
  const WccApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //1
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 3, 95, 126),
          ), //2
          drawer: const NavBar(), //3
          body: const ScheduleNav() //4
          ),
    );
  }
}

///Class deals with the buttons that lead you to specific days, the map, and the sponsorships

class ScheduleNav extends StatelessWidget {
  const ScheduleNav({super.key});

  ///ScheduleNav uses a Scaffold to hold all of the different elements of the homepage together.
  ///Each element has its own code and references another widget, such as a button.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 54, 55),

        ///Holds the entire homepage
        body: Column(

            ///Inside the container is a big column (sets the axis vertical)
            children: <Widget>[
              ///Inside the column are more widgets

              Row(

                  ///top row for days
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///Day Before Event
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255)),
                            foregroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const PreGame())));
                          },
                          child: const Text('Wed, Feb 8'),
                        )),

                    ///Day One Navigation
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255)),
                            foregroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => DayOne())));
                          },
                          child: const Text('Thur, Feb 9'),
                        )),

                    ///Day Two Navigation
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255)),
                            foregroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const DayTwo())));
                          },
                          child: const Text('Fri,  Feb 10'),
                        )),

                    ///Day Three Navigation
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255)),
                            foregroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const dayThree())));
                          },
                          child: const Text('Sat, Feb 11'),
                        )),
                  ]),

              ///Schedule at a glance
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255)),
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 0, 0, 0)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const QuickSched())));
                      },
                      child: const Text('Schedule At A Glance!'),
                    )),
              ]),
              Expanded(
                child:

                    ///below the day selection is the zoomable map (set size as you like)
                    InteractiveViewer(
                  panEnabled: false, // Set it to false
                  child: Image.asset(
                    'assets/images/Graceland_Map.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              ///Added a Column that denotes that the buttons below are our sponsors
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(

                      ///Used the Center widget so the text is automatically centered
                      child: const Text('Our Sponsor!',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )))
                ],
              ),

              Expanded(
                  child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Ads())));
                      },
                      icon: Image.asset(
                        'assets/images/nsuBanner.png',
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ))
                ],
              ))
            ]));
  }
}
///spread out brackets help me in keeping everything organized and what's in what
