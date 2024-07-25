import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_snap/controllers/roster_controller.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/common_button.dart';

class RosterPage extends StatelessWidget {
  final controller = Get.put(RosterControllers());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: Get.height * 0.4,
            width: Get.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.10), // Adjust opacity for shadow
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1), // Shadow position
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    'Add Your Team',
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Icon(
                    Icons.groups,
                    color: Colors.amber,
                    size: 70,
                  ),
                  // Image.asset('assets/icon/roster.png',
                  //     color: Colors.amber, height: 70),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Add your team members and invite them to join you on TeamSnap',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  SizedBox(
                      width: Get.width * 0.7,
                      child: CommonButton(
                          backgroundColors: Color(0xff006ff5),
                          onPressed: () {
                            //  call Sheet
                            controller.callSheetBottom(context);
                          },
                          title: 'Add Team Member')),
                  SizedBox(
                    height: 10,
                  ),
                  const Divider(color: Color.fromARGB(255, 231, 226, 226)),
                  Text(
                    'Need more control adding players?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Switch to computer setup',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: bluecolour,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Players (1)',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sort',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.amber,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Divider(color: Color.fromARGB(255, 231, 226, 226)),

          ListTile(
            onTap: () {
              controller.namesSheetBottom(context);
            },
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(),
            title: Text(
              'John Stathen',
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          )
          // Row(
          //   children: [
          //     const CircleAvatar(
          //       backgroundColor: Colors.grey,
          //       radius: 20,
          //       child: Icon(
          //         Icons.person,
          //         color: Colors.white,
          //         size: 20,
          //       ),
          //     ),
          //     const SizedBox(width: 10),
          //     Text(
          //       'John Stathen',
          //       style: GoogleFonts.poppins(
          //           fontSize: 14, fontWeight: FontWeight.w400),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
