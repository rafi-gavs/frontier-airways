import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/util/appcolor.dart';

import '../util/appstring.dart';

class TravelBooked extends StatefulWidget {
  const TravelBooked({super.key});

  @override
  State<TravelBooked> createState() => _TravelBookedState();
}

class _TravelBookedState extends State<TravelBooked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: AppBar(
          backgroundColor: AppColor.primary,
        ),
      ),
      body: GestureDetector(
        onTap: () {},
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/appimage/Background.png'),
                          fit: BoxFit.fill),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: 5.0,
                              decoration: const BoxDecoration(
                                color: AppColor.yellowColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0)),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.89,
                              decoration: const BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          AppString.welcomeTheodore,
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.stringBlackColor),
                                        ),
                                        const Icon(
                                            Icons.arrow_forward_ios_outlined)
                                      ],
                                    ),
                                    Text(
                                      AppString.miles,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.stringBlackColor),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: AppColor.yellowColor,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text(AppString.eliteGold,
                                            style: GoogleFonts.poppins(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    AppColor.stringBlackColor)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 190),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x27000000),
                            blurRadius: 19.56,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0, 0.0),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      height: 61,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0)),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(Icons.arrow_back_ios_sharp),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(AppString.offer,
                                    style: GoogleFonts.poppins(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.stringBlue))
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColor.lightBlue,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(AppString.saveOnSummerTravel,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.stringBlue)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(AppString.usePromoCode,
                                            style: GoogleFonts.poppins(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400,
                                                color: AppColor.stringBlue)),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text(AppString.save,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    decoration: TextDecoration
                                                        .underline),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w700,
                                                color: AppColor.stringBlue)),
                                      ],
                                    )
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios_outlined)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 30),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x27000000),
                          blurRadius: 19.56,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(0, 0.0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    height: 61,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        AppString.bookAFlight,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: AppColor.whiteColor),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Recent Searches',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: AppColor.stringBlackColor)),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFE3DDD0)),
                          color: AppColor.whiteColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Denver - Atlanta',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.stringBlackColor)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Feb 12 - Jan 18',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF676460))),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFE3DDD0)),
                          color: AppColor.whiteColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Denver - Atlanta',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.stringBlackColor)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Feb 12 - Jan 18',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF676460))),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFE3DDD0)),
                          color: AppColor.whiteColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Denver - Atlanta',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.stringBlackColor)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Feb 12 - Jan 18',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF676460))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 342,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/appimage/bau_offer.png'))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 16.0),
                child: Container(
                  height: 305,
                  decoration: const BoxDecoration(
                    color: AppColor.greenColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 86.52,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/appimage/savebig.png'))),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: AppColor.whiteColor),
                        height: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/appimage/iconh1_discountden.png'))),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: 'Kids Fly Free',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                              text:
                                                  ' and access our  lowest fares all year when  you sign up to be a member.',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor
                                                      .stringBlackColor)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 8.0, right: 8.0),
                              child: Container(
                                height: 44,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.greenColor, width: 2.0),
                                  color: AppColor.whiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Center(
                                  child: Text('Sign Up Now',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.primary)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 16.0),
                child: Container(
                  height: 305,
                  decoration: const BoxDecoration(
                    color: AppColor.brownColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/appimage/Layer_1.png'))),
                      ),
                      Text('All-You-Can-Fly Pass',
                          style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: AppColor.whiteColor)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: AppColor.whiteColor),
                        height: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/appimage/iconh1_discountden.png'))),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      width: 210,
                                      child: Text(
                                          'Flexible with your schedule? This is your ticket to GO WILD and explore all places Frontier can take you, as often as you like!',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  AppColor.stringBlackColor)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 8.0, right: 8.0),
                              child: Container(
                                height: 44,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.greenColor, width: 2.0),
                                  color: AppColor.whiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Center(
                                  child: Text('Join Now!',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.primary)),
                                ),
                              ),
                            )
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
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Color(0xFFE3DDD0))),
          color: AppColor.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.home,
                  color: AppColor.primary,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Home',
                  style: GoogleFonts.poppins(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primary),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(Icons.flight_takeoff_outlined),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Book',
                  style: GoogleFonts.poppins(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(Icons.margin_rounded),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'My Trip',
                  style: GoogleFonts.poppins(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(Icons.access_time_outlined),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Status',
                  style: GoogleFonts.poppins(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primary),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(Icons.more_vert_sharp),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'More',
                  style: GoogleFonts.poppins(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
