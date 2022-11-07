import 'dart:ui';

import 'package:animated_background/animated_background.dart';
import 'package:curves/helper/custom_clipper.dart';
import 'package:curves/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(physics: NeverScrollableScrollPhysics(), children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Nisaf',
                          style: GoogleFonts.poppins(fontSize: 16.0, color: Colors.grey[700]),
                        ),
                        Text(
                          'Find Your Course',
                          style: GoogleFonts.poppins(
                              fontSize: 24.0, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color.fromRGBO(246,196,187,1),
                          
                          ),
                          child: Image.asset('assets/images/avataricon.png'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 170.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffD0F1FF),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Stack(children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '50% OFF',
                              style: GoogleFonts.robotoMono(
                                  fontSize: 28.0, fontWeight: FontWeight.w500),
                            ),
                            TweenAnimationBuilder(
                              tween: IntTween(begin: 220,end: 240),
                              duration: Duration(seconds: 3),
                              builder: (context,value,child) {
                                return Text(
                                  '$value+ Courses',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.0, fontWeight: FontWeight.w500),
                                );
                              }
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Text(
                              'Enroll Now',
                              style: GoogleFonts.poppins(
                                  fontSize: 18.0, fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                            height: 170,
                            width: 200,
                            child: Image.asset(
                              'assets/images/nas_discount.png',
                              fit: BoxFit.cover,
                            )))
                  ]),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Categories',
                      style: GoogleFonts.poppins(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipPath(
                      clipper: MyCustomClipper(),
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 2.25,
                        decoration: const BoxDecoration(
                            color: Color(0xffFFC6C5),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Stack(alignment: Alignment.center, children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'UX/UI',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18.0, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '22 Courses',
                                    style: GoogleFonts.poppins(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              left: 0.0,
                              bottom: 0,
                              child: Container(
                                  //color: Colors.black,
                                  child: Image.asset(
                                'assets/images/uidesign.png',
                                fit: BoxFit.contain,
                                height: 110,
                                width: 110,
                              )))
                        ]),
                      ),
                    ),
                    ClipPath(
                      clipper: MyCustomClipper2(),
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 2.25,
                        decoration: const BoxDecoration(
                            color: Color(0xffD6F4DC),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Stack(alignment: Alignment.center, children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Design',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18.0, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '26 Courses',
                                    style: GoogleFonts.poppins(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              right: -10.0,
                              bottom: -10,
                              child: Container(
                                  //color: Colors.black,
                                  child: Image.asset(
                                'assets/images/design.png',
                                fit: BoxFit.contain,
                                height: 110,
                                width: 110,
                              )))
                        ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Popular Courses',
                  style: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const DetailsScreen();
                    }));
                  },
                  child: Container(
                    height: 170.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 243, 211, 1),
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 130.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 229, 155, 1),
                                borderRadius: BorderRadius.circular(25.0)),
                            child: Hero(
                                tag: 'Nas', child: Image.asset('assets/images/nas.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    child: Text(
                                      'Complete UI/UX & App Design',
                                      style: GoogleFonts.robotoMono(
                                          fontSize: 15.0, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Icon(Icons.play_circle),
                                        SizedBox(width: 10.0),
                                        Text(
                                          '24 Lessons',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 15.0,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          '4.9',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        const Icon(
                                          Icons.currency_rupee,
                                          color: Colors.black,
                                          size: 15.0,
                                        ),
                                        Text(
                                          '2999',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
