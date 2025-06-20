import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_myphotos.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_profile.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_search.dart';
import 'package:lalitha_peetham/screens/matrimony/moresectionpage.dart';
import 'package:lalitha_peetham/screens/matrimony/search_results.dart';
import 'package:lalitha_peetham/screens/matrimony/settings_page.dart';
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
          path: '/more',
          builder: (context, state) => const Moresectionpage(),
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
          path: '/dating',
          builder: (context, state) => MessagingInterfaceContainer(),
        ),
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
