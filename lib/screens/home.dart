import 'package:flutter/material.dart';

import '../widgets/appointment_form.dart';
import '../widgets/fotter.dart';
import '../widgets/home_header.dart';
import '../widgets/home_hero.dart';
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
            SuccessJourneyWidget(),
            AppointmentBookingWidget(),
            FooterWidget(),


          ],
        ),
      ),
    );
  }
}
