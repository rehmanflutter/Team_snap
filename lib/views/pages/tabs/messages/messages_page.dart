import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_snap/controllers/messageController/message.dart';
import 'package:team_snap/views/pages/chat/chat_page.dart';
import 'package:team_snap/views/pages/tabs/messages/chat_person.dart';
import 'package:team_snap/views/pages/tabs/messages/email_check.dart';
import 'package:team_snap/views/pages/tabs/messages/post_page.dart';

class MessagesPage extends StatelessWidget {
  final controller = Get.put(MessageController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          ListTile(
            onTap: () => Get.to(() => ChatPersonToChat()),
            leading: const Icon(
              Icons.chat,
            ),
            title: Text(
              'Chat',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,
                color: Colors.grey.shade500),
          ),
          Divider(
            height: 0,
            color: Colors.grey.shade300,
          ),
          ListTile(
            onTap: () {
              Get.to(PostPageS());
            },
            leading: const Icon(
              Icons.post_add_sharp,
            ),
            title: Text(
              'Post',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,
                color: Colors.grey.shade500),
          ),
          Divider(
            height: 0,
            color: Colors.grey.shade300,
          ),
          ListTile(
            onTap: () {
              Get.to(EmailChecks());
            },
            leading: const Icon(
              Icons.mail,
            ),
            title: Text(
              'Emails',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,
                color: Colors.grey.shade500),
          ),
          Divider(
            height: 0,
            color: Colors.grey.shade300,
          ),
          ListTile(
            onTap: () {
              controller.showButtomsheer(context);
            },
            leading: const Icon(
              Icons.sd_card_alert_sharp,
            ),
            title: Text(
              'Alerts',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.grey.shade500,
            ),
          ),
          Divider(
            height: 0,
            color: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}
