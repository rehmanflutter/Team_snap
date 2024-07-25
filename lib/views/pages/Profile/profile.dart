import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                  text: ' Roster ',
                  col: whitecolour,
                  size: 17,
                  weight: FontWeight.w300,
                )
              ],
            ),
            Textcustam(
              text: 'Edit',
              col: Colors.white,
              size: 17,
              weight: FontWeight.w500,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CustamContainer(
            hight: Get.height * 0.240,
            col: appcolour,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: bluecolour,
                    child: Icon(
                      Icons.image,
                      color: whitecolour,
                    ),
                  ),
                  title: Textcustam(
                    text: 'Abdul Rehman Arehad',
                    col: whitecolour,
                    size: 17,
                    weight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Textcustam(
              text: 'Birthday',
              size: 15,
              weight: FontWeight.w500,
              col: blackcolour,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.add,
                  color: bluecolour,
                ),
                Textcustam(
                  text: 'Add',
                  size: 15,
                  weight: FontWeight.w500,
                  col: bluecolour,
                )
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Textcustam(
              text: 'Gender',
              size: 15,
              weight: FontWeight.w500,
              col: blackcolour,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.add,
                  color: bluecolour,
                ),
                Textcustam(
                  text: 'Add',
                  size: 15,
                  weight: FontWeight.w500,
                  col: bluecolour,
                )
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
          CustamContainer(
            hight: 45,
            wigth: double.infinity,
            col: Color.fromARGB(255, 232, 233, 239),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Textcustam(
                text: '    Contact Information',
                size: 15,
                weight: FontWeight.w500,
                col: blackcolour,
              ),
            ),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Textcustam(
              text: 'prousamaa@gmail.com',
              size: 15,
              weight: FontWeight.w500,
              col: blackcolour,
            ),
            trailing: Icon(
              Icons.email,
              color: bluecolour,
            ),
          ),
          Divider(
            height: 0,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.add,
                color: bluecolour,
              ),
              Textcustam(
                text: 'Add Family Member',
                size: 15,
                weight: FontWeight.w500,
                col: bluecolour,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.add,
                color: bluecolour,
              ),
              Textcustam(
                text: 'Add to iPhone Contacts',
                size: 15,
                weight: FontWeight.w500,
                col: bluecolour,
              )
            ],
          ),
        ],
      ),
    );
  }
}
