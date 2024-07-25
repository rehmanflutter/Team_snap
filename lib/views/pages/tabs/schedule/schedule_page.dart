import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/pages/tabs/schedule/detaile_sch.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Textcustam(
              text: 'May',
              col: blackcolour,
              size: 20,
              weight: FontWeight.w600,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(DetailsSchedule());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustamContainer(
                    hight: 80,
                    wigth: 80,
                    col: Colors.grey.shade100,
                    cir: 14,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Textcustam(
                          text: '17',
                          size: 25,
                          weight: FontWeight.w700,
                          col: Colors.grey,
                        ),
                        Textcustam(
                          text: 'Fri',
                          weight: FontWeight.w700,
                          col: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.green,
                            size: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Textcustam(
                            text: 'TBD',
                            col: blackcolour,
                            size: 16,
                            weight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Textcustam(
                        text: 'vs. Hb  ',
                        col: blackcolour,
                        size: 15,
                        weight: FontWeight.w400,
                      ),
                      Textcustam(
                        text: 'Build Your Free NCSA Profile Now!',
                        col: blackcolour,
                        size: 15,
                        weight: FontWeight.w400,
                      )
                    ],
                  ),
                  CustamContainer(
                    hight: 30,
                    wigth: 30,
                    bordercol: Colors.grey.shade200,
                    borders: true,
                    cir: 6,
                    child: Icon(Icons.question_mark_outlined),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     CircleAvatar(
    //       radius: 60,
    //       backgroundColor: Colors.white38,
    //       child: Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Image.asset(
    //           'assets/icon/calendar.png',
    //           color: Colors.white,
    //           height: 80,
    //         ),
    //       ),
    //     ),
    //     SizedBox(height: Get.height * 0.02),
    //     Text(
    //       'No Events',
    //       style: GoogleFonts.poppins(
    //           color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
    //     ),
    //     SizedBox(height: Get.height * 0.02),
    //     Text(
    //       'TeamSnap lets everybody on your teanm know who you are playing, when, where, and what the result is when the game is over. You can also schedule team events like barbecues, practices and meetins',
    //       textAlign: TextAlign.center,
    //       style: GoogleFonts.poppins(
    //           color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),
    //     ),
    //     SizedBox(height: Get.height * 0.02),
    //     SizedBox(
    //         width: Get.width * 0.4,
    //         height: 40,
    //         child: CommonButton(onPressed: () {}, title: 'Add Game')),
    //     SizedBox(height: Get.height * 0.02),
    //     SizedBox(
    //         width: Get.width * 0.4,
    //         height: 40,
    //         child: CommonButton(onPressed: () {}, title: 'Add Event')),

    //   ],
    // );
  }
}
