import 'package:flutter/material.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class PostPageS extends StatelessWidget {
  const PostPageS({super.key});

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
              text: 'Posts',
              col: Colors.white,
              size: 17,
              weight: FontWeight.w500,
            ),
            Icon(
              Icons.edit_document,
              color: whitecolour,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Textcustam(
                  text: 'Name User',
                  size: 17,
                  weight: FontWeight.w500,
                  col: blackcolour,
                ),
                Textcustam(
                  text: '8 Apr',
                  size: 17,
                  weight: FontWeight.w500,
                  col: Colors.grey,
                ),
              ],
            ),
            Textcustam(
              text: 'Hi my name is Osama',
              size: 16,
              col: Colors.grey,
            ),
            Textcustam(
              text: 'No Replies',
              size: 16,
              col: Colors.grey,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Textcustam(
                  text: 'Hhhh',
                  size: 17,
                  weight: FontWeight.w500,
                  col: blackcolour,
                ),
                Textcustam(
                  text: '31 Mar',
                  size: 17,
                  weight: FontWeight.w500,
                  col: Colors.grey,
                ),
              ],
            ),
            Textcustam(
              text: 'Bhhh',
              size: 16,
              col: Colors.grey,
            ),
            Textcustam(
              text: 'No Replies',
              size: 16,
              col: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
