import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_snap/views/pages/Profile/profile.dart';
import 'package:team_snap/views/pages/tabs/discover/discover_page.dart';
import 'package:team_snap/views/pages/tabs/home/home_page.dart';
import 'package:team_snap/views/pages/tabs/messages/messages_page.dart';
import 'package:team_snap/views/pages/tabs/roster/roster_page.dart';
import 'package:team_snap/views/pages/tabs/schedule/schedule_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;
  final _pages = [
    HomePage(),
    SchedulePage(),
    RosterPage(),
    MessagesPage(),
    DiscoverPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: Container(
          color: Color(0xffcacccb),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(ProfileScreen());
                      },
                      child: const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blueGrey,
                        child: Center(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'John Dow',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'View team profile',
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                Divider(),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  onTap: () {},
                  leading: const Icon(
                    Icons.monetization_on,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'Subscription',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  onTap: () {},
                  leading: const Icon(
                    Icons.favorite_border,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'Refer to TeamSnap',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  onTap: () {},
                  leading: const Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'Help and support',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  onTap: () {},
                  leading: const Icon(
                    Icons.info,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'About TeamSnap',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),

                  onTap: () {},
                  // leading: const Icon(
                  //   Icons.delete,
                  //   color: Colors.red,
                  // ),
                  title: Text(
                    'Delete Account',
                    style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  onTap: () {},
                  title: Text(
                    'Logout',
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.person_pin_circle_outlined,
                color: Colors.white,
              ));
        }),
        backgroundColor: Color(0xff1b6bb0),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(width: 10),
            const Spacer(flex: 2),
            GestureDetector(
              onTap: () {
                Get.to(ProfileScreen());
              },
              child: Text(
                'Jack Rolli',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white),
            const Spacer(),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
              )),
        ],
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Expanded(child: _pages[selectedIndex]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: Get.height * 0.07,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    bottomTab('assets/icon/home.png', 'Home', 0),
                    bottomTab('assets/icon/schedule.png', 'Schedule', 1),
                    bottomTab('assets/icon/roster.png', 'Roster', 2),
                    bottomTab('assets/icon/messages.png', 'Messages', 3),
                    bottomTab('assets/icon/discover.png', 'Discover', 4),
                  ],
                ),
              ),
            ),
            Container(
              height: 5,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget bottomTab(String icon, String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            color: selectedIndex == index ? Color(0xff1b6bb0) : Colors.grey,
            height: 20,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 12,
                color:
                    selectedIndex == index ? Color(0xff1b6bb0) : Colors.grey),
          ),
        ],
      ),
    );
  }
}
