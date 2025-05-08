import 'package:feedplate/screen/mainScreen.dart';
import 'package:feedplate/screen/widget/Tab/tabControllerscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Servicesscreen extends StatefulWidget {
  const Servicesscreen({super.key});

  @override
  State<Servicesscreen> createState() => _ServicesscreenState();
}

class _ServicesscreenState extends State<Servicesscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50.h,
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
                        Icons.share,
                        color: Colors.black,
                        size: 30,
                      )),
                  // Positioned(
                  //   right: 0,
                  //   top: 0,
                  //   child: Container(
                  //     padding: const EdgeInsets.all(2),
                  //     decoration: BoxDecoration(
                  //       color: Colors.redAccent,
                  //       borderRadius: BorderRadius.circular(6),
                  //     ),
                  //     constraints: const BoxConstraints(
                  //       minWidth: 12,
                  //       minHeight: 12,
                  //     ),
                  //   ),
                  // )
                ]),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[100],
                    child: Icon(
                      Icons.favorite_rounded,
                      color: Colors.red,
                      size: 30,
                    )),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/onbord1.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Graphic Design",
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Design social media creative for a day",
                                  maxLines: 2,
                                  softWrap: true,
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            children: [
                              Text("Start at"),
                              Row(
                                children: [
                                  Icon(
                                    Icons.label,
                                    color: Colors.greenAccent,
                                  ),
                                  Text(
                                    "  \$24",
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent[700],
                          ),
                          Text(
                            ' 4.9',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text("(129) "),
                          SizedBox(width: 4),
                          Container(
                            width: 4,
                            height: 4,
                            color: Colors.black87,
                          ),
                          SizedBox(width: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage("assets/images/onbord1.jpg"),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            " Rizal Kece",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 4),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  size: 20.sp,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Top rated Seller",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
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
                          side: BorderSide.none,
                          padding: EdgeInsets.symmetric(vertical: 10.w),
                          backgroundColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12.r), // Coins arrondis
                          ),
                        ),
                        child: Text(
                          'Chat',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 20.sp, // Ajustement de taille
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: OutlinedButton(
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
                              vertical: 10.w), // Uniforme et centré
                          side: BorderSide.none,
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12.r), // Coins arrondis
                          ), // Couleur de la bordure
                        ),
                        child: Text(
                          'Order Now',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 20.sp,
                              fontWeight:
                                  FontWeight.w400, // Ajustement de taille
                              color: Colors.white, // Couleur du texte
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 4,
              ),

              TabcontrollerScreen(),

              SizedBox(
                height: 15,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[700],
                            ),
                            SizedBox(width: 5),
                            Text(
                              "3 Days Delivery",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.replay_10_rounded,
                              color: Colors.grey[700],
                            ),
                            SizedBox(width: 8),
                            Text(
                              "3 Days Delivery",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Doesn't include illustration. The illustration is provided by the customer.",
                      maxLines: 2,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[400]),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Custom design',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800]),
                          ),
                        ),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.greenAccent,
                        )
                      ],
                    )
                  ],
                ),
              )

              // tabbar
            ],
          ),
        ),
      ),
    );
  }
}
