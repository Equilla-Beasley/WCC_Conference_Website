import 'package:flutter/material.dart';
import 'package:wcc_app/Second_Layer.dart';
import 'package:wcc_app/ScheduleNav.dart';

/// Code below is class "NavBar" which holds the code to the drawer that opens.
/// In this code, you add what you want the drawer to look like, it's contents,
/// plus where to send the user if they click on it with
/// Nagivator.push(context,MPR(builder: (cxt) => const <Your New Class Route()));

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      ///ListView holds lists of options
      padding: const EdgeInsets.all(0), //formats
      children: <Widget>[
        const DrawerHeader(
          child: Text('SWCA'),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 1, 104, 118),
              image: DecorationImage(
                  image: AssetImage("assets/images/swcalogo.png"),
                  fit: BoxFit.contain)),
        ),

        ///Path One
        ListTile(
          ///listTile is the function for each option
          title: const Text('Welcome From Conference Host'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Welcome()));

            ///class second route called here
          },
        ),

        ///Path Two
        ListTile(
            title: const Text('Acknowledgements'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const AknowPage())));
            }),

        ListTile(
            title: const Text('2023 Proposal Review Committee'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const ReviewComitt())));
            }),

        ListTile(
            title: const Text('SWCA BOARD MEMBERS'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const SWCAmems())));
            }),

        ListTile(
            title: const Text('Resources/Links'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Links())));
            }),

        ListTile(
            title: const Text('NOVA'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Ads())));
            }),

        ListTile(
            title: const Text('Message From The Creator'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Me())));
            }),
      ],
    ));
  }
}
