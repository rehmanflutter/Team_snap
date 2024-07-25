import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/controllers/schedulePage_controller.dart';
import 'package:team_snap/views/pages/tabs/schedule/widget/assignments_list.dart';
import 'package:team_snap/views/pages/tabs/schedule/widget/availability_List.dart';
import 'package:team_snap/views/pages/tabs/schedule/widget/details_list.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class DetailsSchedule extends StatelessWidget {
  final controller = Get.put(SchedulePageControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: appcolour,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Textcustam(
              text: 'Game',
              col: Colors.white,
              size: 17,
              weight: FontWeight.w500,
            ),
            Row(
              children: [
                Icon(
                  Icons.edit_calendar_outlined,
                  color: whitecolour,
                ),
                Textcustam(
                  text: ' Edit',
                  size: 15,
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            color: appcolour,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.select.value = 0;
                    },
                    child: CustamContainer(
                      hight: 30,
                      col: controller.select.value == 0
                          ? bluecolour
                          : Colors.transparent,
                      cir: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Textcustam(
                          text: 'Details',
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.select.value = 1;
                    },
                    child: CustamContainer(
                      hight: 30,
                      col: controller.select.value == 1
                          ? bluecolour
                          : Colors.transparent,
                      cir: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Textcustam(
                          text: 'Availability',
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.select.value = 2;
                    },
                    child: CustamContainer(
                      hight: 30,
                      col: controller.select.value == 2
                          ? bluecolour
                          : Colors.transparent,
                      cir: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Textcustam(
                          text: 'Assignments',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(() => controller.select == 0
              ? DetailsListShow()
              : controller.select == 1
                  ? AvailabilityListShow()
                  : AssignmentsListShow())
        ],
      ),
    );
  }
}
