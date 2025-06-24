import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/my_maches.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_articles.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_home.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/new_matches_screen.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/tdy_matches.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_myphotos.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_profile.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_search.dart';
import 'package:lalitha_peetham/screens/matrimony/notification_page.dart';
import 'package:lalitha_peetham/screens/matrimony/orders.dart';
import 'package:lalitha_peetham/screens/matrimony/search_results.dart';
import 'package:lalitha_peetham/screens/matrimony/settings_page.dart';
import 'package:lalitha_peetham/screens/matrimony/upgrade_plans.dart';
import 'package:lalitha_peetham/screens/matrimony/your_patners_preferences.dart';
import 'firebase_options.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(path: '/', builder: (context, state) => MainScreen()),
        //GoRoute(path: '*', builder: (context, state) => const NotFoundScreen()),
        GoRoute(
          path: '/matri_dashboard',
          builder: (context, state) => const MatriDashboard(),
        ),
        GoRoute(
          path: '/matri_profile',
          builder: (context, state) => const MatriProfile(),
        ),
        GoRoute(
          path: '/preferences',
          builder: (context, state) => const YourPatnersPreferences(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          path: '/notifications',
          builder: (context, state) => const NotificationsPage(),
        ),
        GoRoute(
          path: '/matri_search',
          builder: (context, state) => const MatrimonialSearch(),
        ),
        GoRoute(
          path: '/matri_photos',
          builder: (context, state) => MyPhotosContainer(),
        ),
        GoRoute(
          path: '/search_results',
          builder: (context, state) => SearchResults(),
        ),
        GoRoute(
          path: '/matches',
          builder: (context, state) => NewMatchesScreen(),
        ),
        GoRoute(
          path: '/tdy_matches',
          builder: (context, state) => TdyMatches(),
        ),

        GoRoute(
          path: '/upgrade_plans',
          builder: (context, state) => PremiumPlansContainer(),
        ),
        GoRoute(
          path: '/orders',
          builder: (context, state) => OrdersPageContainer(),
        ),
        //Ayurvedha Section
        GoRoute(
          path: '/ayurvedha',
          builder: (context, state) => AyurvedhaHome(),
        ),
        GoRoute(
          path: '/ayurvedha_articles',
          builder: (context, state) => AyurvedaArticles(),
        ),
        GoRoute(path: '/my_matches', builder: (context, state) => MyMatches()),
      ],
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Lalitha Peetham',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
