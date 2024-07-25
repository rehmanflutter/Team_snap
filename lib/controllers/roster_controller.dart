import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class RosterControllers extends GetxController {
  void callSheetBottom(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Textcustam(
          text: 'Quick-Add Players',
          size: 16,
          weight: FontWeight.w500,
          col: bluecolour,
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Add Player Manually',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Import from Contacts',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Add Players on a Computer',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Send Invitations',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Textcustam(
            text: 'Cancel',
            size: 16,
            weight: FontWeight.w500,
            col: bluecolour,
          ),
        ),
      ),
    );
  }

  void namesSheetBottom(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Textcustam(
          text: 'First Name',
          size: 16,
          weight: FontWeight.w500,
          col: bluecolour,
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Last Name',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Position',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Gender',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {},
            child: Textcustam(
              text: 'Number',
              size: 16,
              weight: FontWeight.w500,
              col: bluecolour,
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Textcustam(
            text: 'Cancel',
            size: 16,
            weight: FontWeight.w500,
            col: bluecolour,
          ),
        ),
      ),
    );
  }
}
