import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/pages/chat/chat_page.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class ChatPersonToChat extends StatelessWidget {
  const ChatPersonToChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
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
                      )),
                ],
              ),
              Textcustam(
                text: 'Messages',
                size: 17,
                weight: FontWeight.w500,
                col: Colors.black,
              ),
              SizedBox(),
            ],
          ),
        ),
        body: Column(
          children: [
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.to(ChatMessagess());
                        },
                        leading: CircleAvatar(
                          radius: 40,
                          child: Icon(
                            Icons.groups,
                            color: Colors.grey,
                          ),
                        ),
                        title: Textcustam(
                          text: 'Team Chat',
                          col: Color(0xff2E3192),
                          size: 15,
                          weight: FontWeight.w500,
                        ),
                        subtitle: Textcustam(
                          text: 'you: Hello',
                          col: Colors.grey,
                          size: 14,
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Textcustam(
                              text: '1 mo ago',
                              col: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
