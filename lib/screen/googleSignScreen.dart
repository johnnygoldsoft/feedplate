import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:feedplate/screen/homeScreen.dart';
import 'package:feedplate/screen/mainScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Googlesignscreen extends StatefulWidget {
  const Googlesignscreen({super.key});

  @override
  State<Googlesignscreen> createState() => _GooglesignscreenState();
}

class _GooglesignscreenState extends State<Googlesignscreen> {
  int _currentIndex = 0;
  final List<String> _images = [
    'assets/images/onbord1.jpg',
    'assets/images/onbord2.jpg',
    'assets/images/onbord3.jpg',
  ];
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            // Carrousel d'images 1

            CarouselSlider(
              items: _images.map((imagePath) {
                return AnimatedSwitcher(
                  switchInCurve: Curves.easeInOut,
                  switchOutCurve: Curves.easeInOut,
                  duration: Duration(milliseconds: 2000),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 300.w),
                    key: ValueKey<int>(_currentIndex),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1.0,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),

            // Carrousel d'images 2

            // CarouselSlider(
            //   options: CarouselOptions(
            //     height: double.infinity,
            //     enlargeCenterPage:
            //         true, // Peut agrandir la page centrale pour un effet de zoom
            //     enableInfiniteScroll: true, // Faire défiler en boucle
            //     autoPlay: true, // Pour un défilement automatique
            //     autoPlayInterval:
            //         Duration(seconds: 3), // Intervalle de défilement automatique
            //     autoPlayAnimationDuration:
            //         Duration(milliseconds: 800), // Durée de l'animation
            //     viewportFraction:
            //         1.0, // Assure que chaque image occupe l'écran entier
            //   ),
            //   items: _images.map((imagePath) {
            //     return Container(
            //       width: double.infinity,
            //       height: MediaQuery.of(context).size.height / 0.8,
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           alignment: Alignment.topCenter,
            //           image: AssetImage(imagePath),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     );
            //   }).toList(),
            // ),

            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.w),
                child: Text(
                  'Feedplate.',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp, // Ajustement de taille
                      color: Colors.white, // Couleur du texte
                      letterSpacing: .5,
                    ),
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.55,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.w),
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
                          width: _currentIndex == index ? 10.0 : 8.0,
                          height: 8.0.h,
                          margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                          decoration: BoxDecoration(
                            color: _currentIndex == index
                                ? Colors.blue
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(8.0.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    // Texte de bienvenue
                    Text(
                      'Find your next gig, connect with clients, and showcase your skills to the world.',
                      maxLines: 3,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp, // Ajustement de taille
                          color: Colors.black, // Couleur du texte
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 8.w),
                            Text(
                              'Find your next gig',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 8.w),
                            Text(
                              'Connect with clients',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 8.w),
                            Text(
                              'Showcase your skills',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 8.w),
                            Text(
                              'Get hired',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
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
                                  transitionDuration:
                                      Duration(milliseconds: 500),
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
                                  vertical: 12.w), // Uniforme et centré
                              side: BorderSide(color: Colors.teal),
                              backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12.r), // Coins arrondis
                              ), // Couleur de la bordure
                            ),
                            child: Text(
                              'Créer un compte',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 16.sp, // Ajustement de taille
                                  color: Colors.white, // Couleur du texte
                                  letterSpacing: .5,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  16.h), // Espacement entre les deux boutons
                          // Bouton "Se connecter"
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Have an account ?  ',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 12.sp, // Ajustement de taille
                                      color: Colors.black54, // Couleur du texte
                                      letterSpacing: .5,
                                    ),
                                  ),
                                ),
                                RichText(
                                    text: TextSpan(
                                  text: 'Log in',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp, // Ajustement de taille
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
      ),
    );
  }
}
