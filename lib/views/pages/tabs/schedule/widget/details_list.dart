import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class DetailsListShow extends StatelessWidget {
  const DetailsListShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                height: Get.height * 0.270,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/images/mach.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 7,
              ),
              Textcustam(
                text: 'vs. Hb',
                col: blackcolour,
                size: 16,
                weight: FontWeight.w500,
              ),
              Textcustam(
                text: 'Friday, 17 May 2024',
                col: blackcolour,
                size: 16,
                weight: FontWeight.w400,
              ),
              Textcustam(
                text: 'Time: TBD',
                col: blackcolour,
                size: 16,
                weight: FontWeight.w400,
              ),
              Divider(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Textcustam(
                  text: '     VIEW POSTGAME REPORT',
                  col: Colors.grey,
                  size: 16,
                  weight: FontWeight.w400,
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: bluecolour,
                ),
                title: Textcustam(
                  text: 'My Health Check',
                  size: 14,
                  col: Colors.grey,
                ),
                subtitle: Textcustam(
                  text: 'Incomplete',
                  col: blackcolour,
                  size: 15,
                  weight: FontWeight.w500,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              ),
              Divider(
                indent: 60,
                height: 0,
              ),
              ListTile(
                leading: Icon(
                  Icons.check_box_outlined,
                  color: bluecolour,
                ),
                title: Textcustam(
                  text: 'Team Health Check',
                  size: 14,
                  col: Colors.grey,
                ),
                subtitle: Textcustam(
                  text: '1 Incomplete',
                  col: blackcolour,
                  size: 15,
                  weight: FontWeight.w500,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              ),
              Divider(
                indent: 60,
                height: 0,
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on_outlined,
                  color: bluecolour,
                ),
                title: Textcustam(
                  text: 'Location',
                  size: 14,
                  col: Colors.grey,
                ),
                subtitle: Textcustam(
                  text:
                      'Gill Group Of Businesses Railway Road Sadiqabad Pakistan',
                  col: blackcolour,
                  size: 15,
                  weight: FontWeight.w500,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              ),
              Divider(
                indent: 60,
                height: 0,
              ),
              SizedBox(
                height: 10,
              ),
              CustamContainer(
                hight: 30,
                wigth: 100,
                col: bluecolour,
                cir: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: whitecolour,
                    ),
                    Textcustam(
                      text: 'Add',
                      size: 15,
                      col: whitecolour,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
