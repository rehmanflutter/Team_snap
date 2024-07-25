// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:team_snap/models/chat_model.dart';
// import 'package:video_player/video_player.dart';

// class ChatPage extends StatefulWidget {
//   const ChatPage({super.key});

//   @override
//   State<ChatPage> createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   final TextEditingController messageCtrl = TextEditingController();
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset(chatList[4].video!)
//       ..initialize().then((_) {
//         setState(() {});
//       });
//   }

//   var now = DateTime.now();
//   bool isShowImagePopUp = false;
//   bool isShowVideoPopUp = false;
//   bool isShow = false;

//   File? image;
//   Future pickImage(ImageSource sr) async {
//     try {
//       final image = await ImagePicker().pickImage(source: sr);
//       if (image == null) {
//         String formattedTime = DateFormat('kk:mm a').format(now);

//         // chatList.add(ChatModel(time: formattedTime,image: ))
//         final imageTemporary = File(image!.path);
//         setState(() {
//           this.image = imageTemporary;
//         });
//       }
//     } on PlatformException catch (e) {
//       // ignore: avoid_print
//       print('failed to pick image: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     String formattedTime = DateFormat('kk:mm a').format(now);
//     return Scaffold(
//       backgroundColor: const Color(0xff000016),
//       body: SizedBox.expand(
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 const SizedBox(height: 40),
//                 // const ChatHeader(),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: chatList.length,
//                     itemBuilder: (context, index) {
//                       final chatItem = chatList[index];
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: chatItem.isSender
//                                   ? MainAxisAlignment.end
//                                   : MainAxisAlignment.start,
//                               children: [
//                                 if (chatItem.messageType == 'text')
//                                   Flexible(
//                                     fit: FlexFit.loose,
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.only(
//                                           topRight: const Radius.circular(14),
//                                           topLeft: const Radius.circular(14),
//                                           bottomLeft: chatItem.isSender
//                                               ? const Radius.circular(14)
//                                               : const Radius.circular(0),
//                                           bottomRight: chatItem.isSender
//                                               ? const Radius.circular(0)
//                                               : const Radius.circular(14),
//                                         ),
//                                         gradient: LinearGradient(
//                                           colors: chatItem.isSender
//                                               ? [
//                                                   const Color(0xff8E8CED),
//                                                   const Color(0xff0500FA),
//                                                 ]
//                                               : [
//                                                   const Color(0xff1F242C),
//                                                   const Color(0xff1F242C),
//                                                 ],
//                                         ),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Text(
//                                           chatItem.message!,
//                                           style: const TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w500),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 if (chatItem.messageType == 'image')
//                                   SizedBox(
//                                     height: 247,
//                                     width: 190,
//                                     child: Stack(
//                                       children: [
//                                         ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(15),
//                                           child: chatItem.isasset!
//                                               ? Stack(
//                                                   alignment: Alignment.center,
//                                                   children: [
//                                                     GestureDetector(
//                                                       onTap: () {},
//                                                       child: Image.asset(
//                                                         chatItem.image!,
//                                                         height: 247,
//                                                         width: 190,
//                                                         fit: BoxFit.cover,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )
//                                               : Image.network(
//                                                   chatItem.image!,
//                                                   height: 247,
//                                                   width: 190,
//                                                   fit: BoxFit.cover,
//                                                 ),
//                                         ),
//                                         chatItem.isBlurImage
//                                             ? Center(
//                                                 child: GestureDetector(
//                                                   onTap: () {
//                                                     setState(() {
//                                                       isShowImagePopUp = true;
//                                                     });
//                                                   },
//                                                   child: SvgPicture.asset(
//                                                       'assets/icons/music-circle.svg'),
//                                                 ),
//                                               )
//                                             : const SizedBox(),
//                                       ],
//                                     ),
//                                   ),
//                                 if (chatItem.messageType == 'video')
//                                   SizedBox(
//                                     height: 247,
//                                     width: 190,
//                                     child: Stack(
//                                       children: [
//                                         ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(15),
//                                           child: AspectRatio(
//                                             aspectRatio: 0.75,
//                                             child: VideoPlayer(_controller),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                               ],
//                             ),
//                             const SizedBox(height: 3),
//                             Align(
//                               alignment: chatItem.isSender
//                                   ? Alignment.topRight
//                                   : Alignment.topLeft,
//                               child: Text(
//                                 chatItem.time,
//                                 style: TextStyle(
//                                     color: Colors.white.withOpacity(.5),
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             )
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     const SizedBox(height: 10),
//                     const SizedBox(height: 10),
//                     Container(
//                       height: 50,
//                       width: Get.width * 0.9,
//                       decoration: BoxDecoration(
//                         color: const Color(0xff7D7E81).withOpacity(.2),
//                         borderRadius: BorderRadius.circular(40),
//                         // border: GradientBoxBorder(
//                         //   gradient: LinearGradient(
//                         //       begin: Alignment.topCenter,
//                         //       end: Alignment.bottomCenter,
//                         //       colors: [
//                         //         const Color(0xffFFFFFF).withOpacity(.6),
//                         //         const Color(0xff999999).withOpacity(0)
//                         //       ]
//                         //       ),
//                         // ),
//                       ),
//                       child: TextFormField(
//                         controller: messageCtrl,
//                         style: TextStyle(
//                             color: const Color(0xffffffff).withOpacity(.5),
//                             fontSize: 14),
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             errorBorder: InputBorder.none,
//                             enabledBorder: InputBorder.none,
//                             focusedBorder: InputBorder.none,
//                             hintText: 'Type something ...',
//                             hintStyle: TextStyle(
//                                 color: const Color(0xffffffff).withOpacity(.5),
//                                 fontSize: 14),
//                             suffixIcon: Padding(
//                               padding: const EdgeInsets.all(6.0),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     chatList.add(ChatModel(
//                                         messageType: 'text',
//                                         time: formattedTime,
//                                         message: messageCtrl.text,
//                                         isSender: true));
//                                     messageCtrl.clear();
//                                   });
//                                 },
//                                 child: Container(
//                                   height: 38,
//                                   width: 38,
//                                   decoration: const BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     gradient: LinearGradient(
//                                       colors: [
//                                         Color(0xff8E8CED),
//                                         Color(0xff0500FA),
//                                       ],
//                                     ),
//                                   ),
//                                   child: const Center(
//                                     child:
//                                         Icon(Icons.send, color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             prefixIcon: SizedBox(
//                               width: 50,
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: GestureDetector(
//                                       onTap: () {
//                                         pickImage(ImageSource.camera);
//                                       },
//                                       child: const Icon(
//                                           Icons.camera_alt_outlined,
//                                           color: Colors.white),
//                                     ),
//                                   ),
//                                   const SizedBox(width: 5),
//                                   Container(
//                                     height: 30,
//                                     width: .5,
//                                     decoration: BoxDecoration(
//                                         gradient: LinearGradient(
//                                             begin: Alignment.topCenter,
//                                             end: Alignment.bottomCenter,
//                                             colors: [
//                                           Colors.white.withOpacity(.0),
//                                           Colors.white.withOpacity(1),
//                                           Colors.white.withOpacity(.0)
//                                         ])),
//                                   ),
//                                 ],
//                               ),
//                             )),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class ChatMessagess extends StatelessWidget {
  //final controller = Get.put(ChatController());
  List chatmessage = [
    'Hi, thanks for accompanying \nme today. really enjoyed today\n i like it',
    'Oh it\'s okay i like it too babe',
    'Vice',
    'Next time, we will meet again',
    'Oh it\'s okay i like it too babe',
    'Vice',
    'Hi, thanks for accompanying \nme today. really enjoyed today\n i like it',
    'Oh it\'s okay i like it too babe',
    'Vice',
    'Next time, we will meet again',
    'Oh it\'s okay i like it too babe',
    'Vice'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons
                    .arrow_back_ios_new) //SvgPicture.asset(Images.arrarbackCon)
                ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Colors.amber,
                image:
                    DecorationImage(image: AssetImage(''), fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Textcustam(
                  text: 'Sabrina Wah',
                  size: 16,
                  col: Colors.black,
                  weight: FontWeight.w500,
                ),
                Textcustam(
                  text: 'Online',
                  size: 10,
                  col: Colors.grey,
                ),
              ],
            ),
          ],
        ),
        actions: [
          //  SvgPicture.asset(Images.callfill),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Divider(
              height: 0,
            ),
            SizedBox(
              height: 10,
            ),
            CustamContainer(
              hight: 24,
              wigth: 72,
              cir: 8,
              col: Color.fromARGB(255, 242, 212, 177),
              child: Textcustam(text: 'Today'),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatmessage.length,
                itemBuilder: (context, index) {
                  return index == 1 || index == 4 || index == 5
                      ? Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffD4D4D4),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                      children: [
                                        chatmessage[index] == 'Vice'
                                            ? Container(
                                                height: 170,
                                                width: 170,
                                                decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              )
                                            : Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Textcustam(
                                                      col: Color(0xff58B9FF),
                                                      text: 'Sassy Ortega',
                                                      size: 12,
                                                    ),
                                                    Textcustam(
                                                      col: Colors.black,
                                                      text: chatmessage[index],
                                                      size: 12,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        )
                      :

                      // 2nd

                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff58B9FF),
                                    borderRadius: BorderRadius.circular(15)),
                                child: chatmessage[index] == 'Vice'
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 50,
                                          width: 170,
                                          decoration: BoxDecoration(
                                              color: Color(0xff58B9FF),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            children: [
                                              CircleAvatar(),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Textcustam(
                                                    text:
                                                        'city_guide_madrid.pdf',
                                                    size: 12,
                                                    col: whitecolour,
                                                  ),
                                                  Textcustam(
                                                    text: '3.2 MB',
                                                    size: 12,
                                                    col: whitecolour,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Textcustam(
                                          col: Colors.white,
                                          text: chatmessage[index],
                                          size: 12,
                                        ),
                                      ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: CustamContainer(
                      hight: 48,
                      cir: 15,
                      col: Color(0xffD4D4D4),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add),
                            hintText: 'Type your message',
                            border: InputBorder.none,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                              ),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
