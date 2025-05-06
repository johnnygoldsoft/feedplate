import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:feedplate/screen/homeScreen.dart';
import 'package:feedplate/screen/mainScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Googlesignscreen extends StatefulWidget {
  const Googlesignscreen({super.key});

  @override
  State<Googlesignscreen> createState() => _GooglesignscreenState();
}

class _GooglesignscreenState extends State<Googlesignscreen> {
  int _currentIndex = 0;
  final List<String> _images = [
    'images/onbord1.jpg',
    'images/onbord2.jpg',
    'images/post1.jpg',
  ];
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Carrousel d'images

          CarouselSlider(
            options: CarouselOptions(
              height: double.infinity,
              enlargeCenterPage:
                  true, // Peut agrandir la page centrale pour un effet de zoom
              enableInfiniteScroll: true, // Faire défiler en boucle
              autoPlay: true, // Pour un défilement automatique
              autoPlayInterval:
                  Duration(seconds: 3), // Intervalle de défilement automatique
              autoPlayAnimationDuration:
                  Duration(milliseconds: 800), // Durée de l'animation
              viewportFraction:
                  1.0, // Assure que chaque image occupe l'écran entier
            ),
            items: _images.map((imagePath) {
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 0.8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.all(16),
              child: Container(
                child: Text(
                  'Feedplate',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24, // Ajustement de taille
                      color: Colors.white, // Couleur du texte
                      letterSpacing: .5,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.45,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Points indicateurs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _images.length,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: _currentIndex == index ? 12.0 : 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? Colors.green
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Texte de bienvenue
                  Text(
                    'Find your next gig and connect with clients, and showcase your skills to the world.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Find your next gig',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Connect with clients',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Showcase your skills',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Get hired',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  // Boutons
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .stretch, // Assure que les boutons s'étendent sur toute la largeur
                      children: [
                        // Bouton "Créer un compte"
                        OutlinedButton(
                          onPressed: () {
                            // Action pour "Créer un compte"
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 500),
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                                  return Mainscreen();
                                },
                                transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                                  return Align(
                                    child: FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 16), // Uniforme et centré
                            side: BorderSide(color: Colors.teal),
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // Coins arrondis
                            ), // Couleur de la bordure
                          ),
                          child: Text(
                            'Créer un compte',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 20, // Ajustement de taille
                                color: Colors.white, // Couleur du texte
                                letterSpacing: .5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 16), // Espacement entre les deux boutons
                        // Bouton "Se connecter"
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'pas encore de compte ?  ',
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    fontSize: 16, // Ajustement de taille
                                    color: Colors.black87, // Couleur du texte
                                    letterSpacing: .5,
                                  ),
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Se connecter',
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    fontSize: 16, // Ajustement de taille
                                    color:
                                        Color(0xFF0A6BAC), // Couleur du texte
                                    letterSpacing: .5,
                                  ),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Action pour "Se connecter"
                                  },
                              )),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
