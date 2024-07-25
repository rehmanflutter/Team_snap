import 'package:flutter/material.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class DiscoverProfile extends StatelessWidget {
  const DiscoverProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F2F7),
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
              text: 'Edit',
              col: Colors.white,
              size: 17,
              weight: FontWeight.w500,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 65,
                col: whitecolour,
                cir: 10,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    // contentPadding: EdgeInsets.only(bottom: 10),
                    leading: CircleAvatar(),
                    title: Textcustam(
                      text: 'Usama',
                      col: blackcolour,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                    subtitle: Textcustam(
                      text: '1 Members',
                      size: 16,
                      col: Colors.grey.shade500,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 227,
                col: whitecolour,
                cir: 10,
                child: Column(
                  children: [
                    ListTile(
                      // contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.event_available_outlined,
                        color: bluecolour,
                      ),
                      title: Textcustam(
                        text: 'Availability',
                        col: blackcolour,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.photo_size_select_actual_rounded,
                        color: bluecolour,
                      ),
                      title: Textcustam(
                        text: 'Photos',
                        col: blackcolour,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.book_outlined,
                        color: bluecolour,
                      ),
                      title: Textcustam(
                        text: 'Statistics',
                        col: blackcolour,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.file_copy,
                        color: bluecolour,
                      ),
                      title: Textcustam(
                        text: 'Files',
                        col: blackcolour,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 115,
                col: whitecolour,
                cir: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.book_outlined,
                        color: bluecolour,
                      ),
                      title: Textcustam(
                        text: 'Classic payments',
                        col: blackcolour,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.file_copy_rounded,
                        color: bluecolour,
                      ),
                      title: Textcustam(
                        text: 'Tracking',
                        col: blackcolour,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 60,
                col: whitecolour,
                cir: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.notification_important_outlined,
                        color: bluecolour,
                      ),
                      title: Textcustam(
                        text: 'Notificati Preference',
                        col: blackcolour,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
