import 'package:feedplate/screen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final List<Widget> pages = [
    const Homescreen(),
    const Center(child: Text("Order")),
    const Center(child: Text("Discovery")),
    const Center(child: Text("Message")),
    const Center(child: Text("Profile")),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60, // Hauteur de la barre d'application
        automaticallyImplyLeading: false,
        title: Text(
          'Feedplate',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28, // Ajustement de taille
              color: Colors.black, // Couleur du texte
              letterSpacing: .5,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[100],
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black45,
                        size: 30,
                      )),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(backgroundImage: AssetImage("images/onbord2.jpg")),
              ],
            ),
          ),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Handle navigation here
          setState(() {
            currentIndex = index;
          });
          // Navigator.push(
        },
      ),
    );
  }
}
