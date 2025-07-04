import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/about_home.dart';
import '../widgets/appointment_form.dart';
import '../widgets/footer.dart';
import '../widgets/home_daily_horoscope.dart';
import '../widgets/home_featured_serv.dart';
import '../widgets/home_header.dart';
import '../widgets/home_hero.dart';
import '../widgets/home_our_services.dart';
import '../widgets/home_services.dart';
import '../widgets/sucess_journey.dart';
import '../providers/firebase_phone_auth.dart'; // Add this import

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // Listen to authentication state
    final authState = ref.watch(authNotifierProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: authState.when(
        data: (user) {
          // User data loaded successfully, show the main content
          // Whether user is logged in or not, always show the homepage
          return SingleChildScrollView(
            child: Column(
              children: [
                // Header at the top - will show Login/Logout based on auth state
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
          );
        },
        loading: () {
          // Show minimal loading for better UX - don't block the entire page
          return SingleChildScrollView(
            child: Column(
              children: [
                // Show header with loading state
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(color: Color(0xFFD4BB26)),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                ),
                // Show rest of the page
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
          );
        },
        error: (error, stack) {
          // Even on auth error, show the homepage with fallback header
          return SingleChildScrollView(
            child: Column(
              children: [
                // Show header (will fallback to login state)
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
          );
        },
      ),
    );
  }
}
