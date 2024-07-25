import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/controllers/discover_Page_controller.dart';
import 'package:team_snap/views/pages/Payments/payment.dart';
import 'package:team_snap/views/pages/tabs/discover/discove_profile.dart';
import 'package:team_snap/views/pages/tabs/discover/youth_soccer_Train_home.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class DiscoverPage extends StatelessWidget {
  final controller = Get.put(DiscoverPageController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                itemCount: controller.discover.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectindex.value = index;
                        },
                        child: CustamContainer(
                          hight: 50,
                          col: controller.selectindex.value == index
                              ? Colors.black
                              : Color(0xfff2f2f2),
                          cir: 7,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Textcustam(
                                text: controller.discover[index],
                                col: controller.selectindex.value == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Textcustam(
              text: ' The Latest',
              col: Colors.grey.shade500,
              size: 16,
              weight: FontWeight.w500,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: Get.height * 0.220,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 10),

                      //
                      ///
                      //////
                      ///     Profile page call
                      ///
                      ///
                      child: GestureDetector(
                        onTap: () {
                          Get.to(DiscoverProfile());
                        },
                        child: Container(
                          height: Get.height * 0.220,
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/img1.jpg'),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Textcustam(
                                  text: 'Mental Health Literacy',
                                  col: whitecolour,
                                  size: 20,
                                  weight: FontWeight.w700,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.menu_book_outlined,
                                      color: whitecolour,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Textcustam(
                                      text: 'Mental',
                                      col: whitecolour,
                                      size: 12,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Textcustam(
                  text: 'Youth Soccer: Train at Home',
                  col: Colors.grey,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(YouthSoccerTrainAtHome());
                    },
                    child: Textcustam(
                      text: 'All(10)',
                      col: bluecolour,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.youthSoccer.length,
              padding: const EdgeInsets.only(left: 10, right: 10),
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: controller.youthSoccer[index],
                              size: 16,
                              weight: FontWeight.w700,
                              col: Colors.black,
                            ),

                            // /
                            ////
                            ///   Call Payment Class
                            ///
                            GestureDetector(
                              onTap: () {
                                Get.to(PaymentsClass());
                              },
                              child: Icon(
                                Icons.lock,
                                color: Color(0xfffeba8b),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: Get.width * 0.250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/img1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Container(
                                width: Get.width * 0.5,
                                child: Textcustam(
                                  text:
                                      'Players practice moving the ball around a defender in this game from FC Barcelona. 10 min',
                                  col: Colors.grey,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CustamContainer(
                              hight: 24,
                              cir: 15,
                              col: Color(0xffc0ebfb),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Textcustam(
                                  text: 'At-Home Activity',
                                  col: Color(0xff247497),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustamContainer(
                              hight: 24,
                              cir: 15,
                              col: Color(0xffc0ebfb),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Textcustam(
                                  text: 'Dribbling',
                                  col: Color(0xff247497),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustamContainer(
                              hight: 24,
                              cir: 15,
                              col: Color(0xffc0ebfb),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Textcustam(
                                  text: 'Attacking',
                                  col: Color(0xff247497),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          height: 0,
                        )
                      ],
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
