import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/screens/flight_details_widget.dart';
import 'package:travel/screens/gowild_widget.dart';
import 'package:travel/screens/offercard_widget.dart';
import 'package:travel/screens/recent_search_list.dart';
import 'package:travel/screens/savebig_widget.dart';
import 'package:travel/screens/welcome_card.dart';
import 'package:travel/util/appcolor.dart';
import 'package:travel/widget/bottom_navbar.dart';

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
                    child: const WelcomeCard(),
                 
                  ),
                  const OfferCardWidget()
                
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
              const RecentSearchList(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 342,
                  decoration: const BoxDecoration(
                      image: DecorationImage(

                          image: AssetImage('assets/appimage/bau_offer.png'))),
                ),
              ),
              const SaveBigWidget(),
              const GoWildWidget(),
              FlightDetailWidget(isCheckedIn: true,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

