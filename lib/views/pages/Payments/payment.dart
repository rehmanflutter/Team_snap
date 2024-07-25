import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/common_button.dart';
import 'package:team_snap/views/widgets/custamContainer.dart';
import 'package:team_snap/views/widgets/textCustam.dart';

class PaymentsClass extends StatefulWidget {
  @override
  State<PaymentsClass> createState() => _PaymentsClassState();
}

class _PaymentsClassState extends State<PaymentsClass> {
  RxBool popular = true.obs;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  paymentSheetShow(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.shade100,
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: bluecolour,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.lock,
                color: Colors.orange,
              ),
              SizedBox(
                height: 20,
              ),
              Textcustam(
                text: 'Subscription needed',
                size: 15,
                weight: FontWeight.w500,
                col: blackcolour,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/onboard2.png')),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width * 0.7,
                child: Textcustam(
                  align: TextAlign.center,
                  text:
                      'This content is available with a TeamSnap+ Subscription',
                  col: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  paymentSheetShow(context);
                },
                child: Textcustam(
                  text: 'Take me Back',
                  size: 15,
                  col: bluecolour,
                ),
              )
            ],
          ),
        ));
  }

  void paymentSheetShow(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Textcustam(
                  text: 'Cancel',
                  size: 15,
                  col: bluecolour,
                ),
              ),
              Textcustam(
                text: 'teamSNAP+',
                size: 17,
                col: blackcolour,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: 'Unlock TeamSnap+ today to get:',
                size: 15,
                weight: FontWeight.w500,
                col: blackcolour,
              ),
              SizedBox(
                height: 30,
              ),

              Stack(
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    //  color: Colors.red,
                  ),
                  Transform.rotate(
                    angle: 180 * 3.14 / 5,
                    child: Container(
                      height: 150,
                      width: 270,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/images/img1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Transform.rotate(
                      angle: 5 * 3.14 / 180,
                      child: Container(
                        height: 150,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/images/img1.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 15,
                    child: Column(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 45,
                        ),
                        Textcustam(
                          text: 'No ads',
                          size: 15,
                          weight: FontWeight.bold,
                          col: blackcolour,
                        )
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 30,
              ),

              //
              //
              //
              //
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  SizedBox(
                      width: Get.width * 0.7,
                      child: Textcustam(
                          col: blackcolour,
                          text:
                              'Drills and practice pls from pro-league partners like MLS, FC Barcelona and MLB'))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  SizedBox(
                      width: Get.width * 0.7,
                      child: Textcustam(
                          col: blackcolour,
                          text:
                              '1-on-1 home training for youth soccer, baseball or softball'))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  SizedBox(
                      width: Get.width * 0.7,
                      child: Textcustam(
                        text: 'An ad-free experience',
                        col: blackcolour,
                      ))
                ],
              ),

              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  popular.value = true;
                },
                child: Obx(
                  () => CustamContainer(
                    hight: 40,
                    cir: 10,
                    wigth: double.infinity,
                    borders: true,
                    bordercol: popular.value == true ? appcolour : Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: '/',
                            col: blackcolour,
                            size: 17,
                            weight: FontWeight.w700,
                          ),
                          Row(
                            children: [
                              Textcustam(
                                text: 'Most popular  ',
                                col: blackcolour,
                                size: 15,
                                weight: FontWeight.w500,
                              ),
                              Icon(
                                popular.value == true
                                    ? Icons.check_circle_rounded
                                    : Icons.circle_outlined,
                                color: bluecolour,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  popular.value = false;
                },
                child: Obx(
                  () => CustamContainer(
                    hight: 40,
                    cir: 10,
                    wigth: double.infinity,
                    borders: true,
                    bordercol: popular.value == false ? appcolour : Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: '/',
                            col: blackcolour,
                            size: 17,
                            weight: FontWeight.w700,
                          ),
                          Row(
                            children: [
                              Textcustam(
                                text: '  ',
                                col: blackcolour,
                                size: 15,
                                weight: FontWeight.w500,
                              ),
                              Icon(
                                popular.value != false
                                    ? Icons.circle_outlined
                                    : Icons.check_circle_rounded,
                                color: appcolour,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              CommonButton(
                onPressed: () {},
                title: 'Subscribe',
                backgroundColors: bluecolour,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: 'Cancel anytime. Terms and conditions apply.',
                col: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
