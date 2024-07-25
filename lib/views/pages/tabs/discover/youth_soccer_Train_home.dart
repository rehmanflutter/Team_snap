import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/controllers/discover_Page_controller.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class YouthSoccerTrainAtHome extends StatelessWidget {
  final controller = Get.put(DiscoverPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: appcolour,
        automaticallyImplyLeading: false,
        title: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    )),
                Textcustam(
                  text: '  Back ',
                  col: whitecolour,
                  size: 17,
                  weight: FontWeight.w300,
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Textcustam(
              text: 'Youth Soccer: Train at Home',
              col: Colors.white,
              size: 17,
              weight: FontWeight.w500,
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
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
                                Icon(
                                  Icons.lock,
                                  color: Color(0xfffeba8b),
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
                                          image: AssetImage(
                                              'assets/images/img1.jpg'),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
              ),
            ],
          )),
    );
  }
}
