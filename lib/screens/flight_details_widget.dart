import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/util/appcolor.dart';
import 'package:travel/util/appimage.dart';
import 'package:travel/util/appstring.dart';

class FlightDetailWidget extends StatelessWidget {
  bool isCheckedIn =true;
   FlightDetailWidget({super.key,required this.isCheckedIn});

 

  @override
  Widget build(BuildContext context) {
    return  Padding(padding:  const EdgeInsets.only(left: 18.0, right: 18.0, top: 30),
    child:Container(
      
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(8)

      ),
      
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0,),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: Text(AppString.fightDetails,
              style: GoogleFonts.montserrat(
                fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: AppColor.stringBlackColor,
                
              ),),
            ),

          ),
          const Divider(
            thickness:4 ,
            color:AppColor.stringBlue
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:18.0,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Wed, Jul 14, 2024 ",style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: AppColor.stringBlackColor,
                
                ),),
                Text("Confirmation: WFH7YT",style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: AppColor.stringBlackColor,
                
                ),)
                
                

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             

                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.depart,style: GoogleFonts.poppins(
                      fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColor.stringBlackColor,
                  
                    ),),
                    Text("8:55 AM",
                style: GoogleFonts.montserrat(
                  fontSize: 24.0,
                                fontWeight: FontWeight.w700,
                                color: AppColor.stringBlackColor,
                  
                ),),
                 Text('Ft Lauderdale \n FFL',textAlign: TextAlign.center, style: GoogleFonts.poppins(
                      fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColor.stringBlackColor,
                  
                    ),),
                    
                  ],
                ),
            isCheckedIn?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('F9 1176',textAlign: TextAlign.center, style: GoogleFonts.poppins(
                      fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: AppColor.stringBlackColor,
                  
                    ),),

                    SizedBox(
                      height: 5,
                      width: 5,
                      child: Image.asset( 'assets/appimage/airplane.png',fit: BoxFit.contain,)),  
                    // Text('LAS',textAlign: TextAlign.center, style: GoogleFonts.poppins(
                    //   fontSize: 12.0,
                    //             fontWeight: FontWeight.w400,
                    //             color: AppColor.stringBlackColor,
                  
                    // ),)
                    ],
                ):

                Column(
                  children: [Image.asset( 'assets/appimage/fightimage.png'),  Text('LAS',textAlign: TextAlign.center, style: GoogleFonts.poppins(
                      fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColor.stringBlackColor,
                  
                    ),),],
                ),

                   Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.arrive,style: GoogleFonts.poppins(
                      fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColor.stringBlackColor,
                  
                    ),),
                    Text("11:00 AM",
                style: GoogleFonts.montserrat(
                  fontSize: 24.0,
                                fontWeight: FontWeight.w700,
                                color: AppColor.stringBlackColor,
                  
                ),),
                 Text('San Francisco \n SFO',textAlign: TextAlign.center, style: GoogleFonts.poppins(
                      fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColor.stringBlackColor,
                  
                    ),),
                    
                  ],
                ),
               
             
              ],
            ),
          ),
            Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 18.0, top: 20),
              
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
                    height: 55,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        AppString.checkIn,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: AppColor.whiteColor),
                      ),
                    ),
                  )),
                  const SizedBox(height: 6,),
                   Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 18.0, top: 20,bottom: 20),
              
                  child: Container(
                    decoration:  BoxDecoration(
                      color: AppColor.whiteColor,
                      border: Border.all(color: AppColor.primary,width: 2),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      boxShadow:const [
                         BoxShadow(
                          color: Color(0x27000000),
                          blurRadius: 19.56,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(0, 0.0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    height: 55,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        AppString.manage,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primary),
                      ),
                    ),
                  )),
        ],
      ),
    ) ,
      
    );
  }
}