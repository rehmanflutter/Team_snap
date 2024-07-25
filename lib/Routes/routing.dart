import 'package:get/get.dart';
import 'package:team_snap/views/pages/Profile/profile.dart';
import 'package:team_snap/views/pages/tabs/messages/email_check.dart';
import 'package:team_snap/views/pages/tabs/messages/post_page.dart';
import 'package:team_snap/views/pages/Payments/payment.dart';
import 'package:team_snap/views/pages/bottom_nav_page/bottom_nav_page.dart';
import 'package:team_snap/views/pages/tabs/discover/discove_profile.dart';
import 'package:team_snap/views/pages/tabs/discover/discover_page.dart';
import 'package:team_snap/views/pages/tabs/discover/youth_soccer_Train_home.dart';
import 'package:team_snap/views/pages/tabs/messages/messages_page.dart';
import 'package:team_snap/views/pages/tabs/roster/roster_page.dart';
import 'package:team_snap/views/pages/tabs/schedule/detaile_sch.dart';

class AppRouting {
  static final routes = [
    GetPage(
        name: '/BottomNavPage',
        page: () => BottomNavPage(),
        transition: Transition.circularReveal),
    GetPage(
        name: '/RosterPage',
        page: () => RosterPage(),
        transition: Transition.downToUp),
    GetPage(
        name: '/MessagesPage',
        page: () => MessagesPage(),
        transition: Transition.circularReveal),
    GetPage(
      name: '/DiscoverPage',
      page: () => DiscoverPage(),
    ),
    GetPage(
      name: '/YouthSoccerTrainAtHome',
      page: () => YouthSoccerTrainAtHome(),
    ),

    GetPage(
      name: '/DiscoverProfile',
      page: () => DiscoverProfile(),
    ),

    GetPage(
      name: '/PaymentsClass',
      page: () => PaymentsClass(),
    ),

    //  Chose
    GetPage(
      name: '/DetailsSchedule',
      page: () => DetailsSchedule(),
    ),

    GetPage(
      name: '/EmailChecks',
      page: () => EmailChecks(),
    ),

    GetPage(
      name: '/PostPageS',
      page: () => PostPageS(),
    ),

    GetPage(
      name: '/ProfileScreen',
      page: () => ProfileScreen(),
    ),

//GetPage(
//       name: '/DiscoverPage',
//       page: () => DiscoverPage(),
//     ),
  ];
}
