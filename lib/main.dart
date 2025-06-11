import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_profile.dart';
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
