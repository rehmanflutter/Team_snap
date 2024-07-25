import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class AssignmentsListShow extends StatelessWidget {
  const AssignmentsListShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Textcustam(
            text: 'Volunteers Needed (1)',
            size: 16,
            weight: FontWeight.w600,
            col: blackcolour,
          ),
          ListTile(
            leading: CircleAvatar(),
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
        ],
      ),
    );
  }
}
