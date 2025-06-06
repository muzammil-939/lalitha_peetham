import 'package:flutter/material.dart';

import '../widgets/about_home.dart';
import '../widgets/appointment_form.dart';
import '../widgets/fotter.dart';
import '../widgets/home_daily_horoscope.dart';
import '../widgets/home_featured_serv.dart';
import '../widgets/home_header.dart';
import '../widgets/home_hero.dart';
import '../widgets/home_our_services.dart';
import '../widgets/home_services.dart';
import '../widgets/sucess_journey.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header at the top
            HomeHeader(),
            HomeHero(),

            AboutHome(),
            HomeDailyHoroscope(),
            HomeOurServices(),
            HomeFeaturedServ(),
            HomeServices(),
            SuccessJourneyWidget(),
            AppointmentBookingWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
