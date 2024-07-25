import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class EmailChecks extends StatelessWidget {
  const EmailChecks({super.key});

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
              text: 'Emails',
              col: Colors.white,
              size: 17,
              weight: FontWeight.w500,
            ),
            Icon(
              Icons.add,
              color: whitecolour,
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 25,
            ),
          ),
          Icon(
            Icons.email_outlined,
            size: 60,
          ),
          SizedBox(
            height: 10,
          ),
          Textcustam(
            text: 'No Emails',
            size: 18,
            weight: FontWeight.w500,
            col: blackcolour,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: Textcustam(
              text:
                  'You can send emails to everyone on your team, or only to a few select folks. Every email you send gets saved so you can refer back to it, or re-send later to others',
              align: TextAlign.center,
              col: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
