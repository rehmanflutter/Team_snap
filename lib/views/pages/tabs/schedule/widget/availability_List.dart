import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/pages/bottom_nav_page/bottom_nav_page.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/common_button.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AvailabilityListShow extends StatelessWidget {
  final pagecontrolle = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              controller: pagecontrolle,
              itemBuilder: (context, index) {
                return ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: Get.height * 0.330,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/mach.png'),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: CustamContainer(
                                  wigth: double.infinity,
                                  hight: 55,
                                  col: whitecolour,
                                  cir: 10,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Textcustam(
                                            text: 'Idrey Reynolds ',
                                            col: blackcolour,
                                            weight: FontWeight.w500,
                                          ),
                                          Textcustam(
                                            text: 'Shortstop',
                                            col: Colors.grey.shade400,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Textcustam(
                                    text: 'Availability',
                                    size: 23,
                                    weight: FontWeight.w700,
                                    col: blackcolour,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                leading: CircleAvatar(),
                                title: Textcustam(
                                  text: 'Know Who\'s Going ',
                                  col: blackcolour,
                                  weight: FontWeight.w500,
                                ),
                                subtitle: Textcustam(
                                  text:
                                      'Allow players to RSVP for every event on your team\'s schedule',
                                  col: Colors.grey.shade400,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                leading: CircleAvatar(),
                                title: Textcustam(
                                  text: 'Auto Reminders ',
                                  col: blackcolour,
                                  weight: FontWeight.w500,
                                ),
                                subtitle: Textcustam(
                                  text:
                                      'TeamSnap will remind players to set their availability before every event.',
                                  col: Colors.grey.shade400,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                leading: CircleAvatar(),
                                title: Textcustam(
                                  text: 'Lineups ',
                                  col: blackcolour,
                                  weight: FontWeight.w500,
                                ),
                                subtitle: Textcustam(
                                  text:
                                      ' Create a lineup, add player positions and rearrange the order',
                                  col: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: pagecontrolle,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: JumpingDotEffect(
                      spacing: 5.0,
                      radius: 10.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,

                      //   paintStyle: PaintingStyle.stroke,
                      //   strokeWidth: 1.5,
                      dotColor: Colors.grey.shade300,
                      activeDotColor: Colors.indigo),
                ),
                SizedBox(
                  height: 10,
                ),
                CommonButton(
                  onPressed: () {},
                  title: 'Learn More',
                  backgroundColors: appcolour,
                ),
                SizedBox(
                  height: 10,
                ),
                CustamContainer(
                  hight: 6,
                  wigth: 100,
                  cir: 10,
                  col: blackcolour,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
