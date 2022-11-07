import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Center(
          child: Text('Details',
              style: GoogleFonts.robotoMono(
                  fontSize: 18.0, fontWeight: FontWeight.w800, color: Colors.black)),
        ),
        actions: const [
          Icon(
            Icons.bookmark_border_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.1,
                    child: Text(
                      'Complete UI/UX & App Design',
                      style: GoogleFonts.robotoMono(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(
                        Icons.currency_rupee,
                        color: Color.fromARGB(255, 177, 45, 36),
                        size: 18.0,
                      ),
                      Text(
                        '2999',
                        style: GoogleFonts.robotoMono(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 15.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    '4.9',
                    style:
                        GoogleFonts.poppins(fontSize: 13.0, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 20.0),
                  Text(
                    '2.8k Enrolled',
                    style: GoogleFonts.poppins(
                        fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(255, 243, 211, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nas Daily',
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                AnimatedTextKit(
                                  repeatForever: false,
                                  totalRepeatCount: 1,
                                  animatedTexts: [TypewriterAnimatedText(
                                  'Product Designer',curve: Curves.easeIn,
                                  speed: Duration(milliseconds: 80),
                                  textStyle:  GoogleFonts.robotoMono(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(147, 0, 0, 0)),
                                        
                                )])
                               

                              ]),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 200,
                        // width: 200,
                        child: Hero(
                            tag: 'Nas',
                            child: Image.asset(
                              'assets/images/nas.png',
                            )),
                      ))
                ]),
              ),
              const SizedBox(height: 20.0),
              Text('Description',
                  style: GoogleFonts.robotoMono(
                      fontSize: 18.0, fontWeight: FontWeight.w800, color: Colors.black)),
              const SizedBox(height: 18.0),
              Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, ',
                  style: GoogleFonts.poppins(
                      fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.black)),
              const SizedBox(height: 20.0),
              Text('24 Lessons',
                  style: GoogleFonts.robotoMono(
                      fontSize: 18.0, fontWeight: FontWeight.w800, color: Colors.black)),
              const SizedBox(height: 20.0),
              Container(
                height: MediaQuery.of(context).size.height/3,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                  return  ListTile(
                    leading: const Icon(Icons.play_circle,color:  Color.fromRGBO(254,103,86,1),size: 28.0,),
                    title: Text('Intro to design',style: GoogleFonts.poppins(),),
                    trailing: const Text('02:26'),
                  );
                })),
              )
            ]),
          ),
        ),
      )),

      bottomNavigationBar: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromRGBO(254,103,86,1))
            ,
            child: Center(child: Text('Enroll Course Now',style: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),)),
          ),
        ),
      ),
    );
  }
}
