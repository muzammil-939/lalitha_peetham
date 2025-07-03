import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_cardpin.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_doc_reg/ayurvedha_article_submit.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_doc_reg/ayurvedha_doc_reg_1.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_doc_reg/ayurvedha_doc_reg_2.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_doc_reg/ayurvedha_doc_reg_3.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_doc_reg/ayurvedha_doc_regsuccess.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_doc_reg/ayurvedha_post_article.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_find_doc.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_notifications/ayurvedha_order_confirm.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_notifications/user_notifications.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_appoint_track.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_appointment.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_call_request.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_patient_reg_1.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_patient_reg_2.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_patient_reg_3.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_post.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedha_patient_reg/ayurvedha_post_case_discussion.dart';
import 'package:lalitha_peetham/screens/ayurvedha/blog_screen.dart';
import 'package:lalitha_peetham/screens/ayurvedha/buy_herbs&medicince.dart';
import 'package:lalitha_peetham/screens/ayurvedha/case_discussion_info.dart';
import 'package:lalitha_peetham/screens/ayurvedha/case_discussions.dart';
import 'package:lalitha_peetham/screens/ayurvedha/doc_profile.dart';
import 'package:lalitha_peetham/screens/ayurvedha/herbs_product_buynow.dart';
import 'package:lalitha_peetham/screens/ayurvedha/herbs_products_details.dart';
import 'package:lalitha_peetham/screens/ayurvedha/patient_appointment.dart';
import 'package:lalitha_peetham/screens/ayurvedha/single_herbformulation.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/one_to_one_sessions.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/one_to_one_yogareg.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/onetoone_sessions_book.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/online_meditation.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/testimonials.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/welcome_yoga_screen.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/accepted_screen.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/deleted_screen.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/message_screen.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/received_screen.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/sent_screen.dart';
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
        GoRoute(
          path: '/ayurvedha_find_doc',
          builder: (context, state) => AyurvedhaFindDoc(),
        ),
        GoRoute(
          path: '/ayurvedha_patient_reg_1',
          builder: (context, state) => AyurvedhaPatientReg1(),
        ),
        GoRoute(
          path: '/ayurvedha_patient_reg_2',
          builder: (context, state) => AyurvedhaPatientReg2(),
        ),
        GoRoute(
          path: '/ayurvedha_patient_reg_3',
          builder: (context, state) => AyurvedhaPatientReg3(),
        ),
        //Doc Registeration
        GoRoute(
          path: '/ayurvedha_doc_reg_1',
          builder: (context, state) => AyurvedhaDocReg1(),
        ),
        GoRoute(
          path: '/ayurvedha_doc_reg_2',
          builder: (context, state) => AyurvedhaDocReg2(),
        ),
        GoRoute(
          path: '/ayurvedha_doc_reg_3',
          builder: (context, state) => AyurvedhaDocReg3(),
        ),
        GoRoute(
          path: '/ayurvedha_doc_regsuccess',
          builder: (context, state) => AyurvedhaDocRegsuccess(),
        ),
        GoRoute(
          path: '/case_discussions_info',
          builder: (context, state) => CaseDiscussionInfo(),
        ),
        GoRoute(
          path: '/ayurvedha_patient_appointment',
          builder: (context, state) => PatientAppointment(),
        ),
        GoRoute(
          path: '/ayurvedha_cardpin',
          builder: (context, state) => AyurvedhaCardpin(),
        ),
        GoRoute(
          path: '/ayurvedha_order_confirm',
          builder: (context, state) => OrderConfirmPage(),
        ),
        GoRoute(
          path: '/ayurvedha_appoint',
          builder: (context, state) => AyurvedhaAppointment(),
        ),
        GoRoute(
          path: '/ayurvedha_appointment_tracking',
          builder: (context, state) => AyurvedhaAppointTrack(),
        ),
        GoRoute(
          path: '/ayurvedha_call_request',
          builder: (context, state) => AyurvedhaCallRequest(),
        ),
        GoRoute(
          path: '/ayurvedha_post_case_discussion',
          builder: (context, state) => AyurvedhaPostCaseDiscussion(),
        ),
        GoRoute(path: '/post', builder: (context, state) => AyurvedhaPost()),
        GoRoute(
          path: '/user_notifications',
          builder: (context, state) => UserNotifications(),
        ),
        //docprof
        GoRoute(
          path: '/doc_profile',
          builder: (context, state) => DocProfile(),
        ),
        GoRoute(
          path: '/ayurvedha_post_article',
          builder: (context, state) => AyurvedhaPostArticle(),
        ),
        GoRoute(
          path: '/article_submit',
          builder: (context, state) => AyurvedhaArticleSubmit(),
        ),
        GoRoute(
          path: '/herbs_product_details',
          builder: (context, state) => HerbsProductsDetails(),
        ),

        GoRoute(path: '/blog', builder: (context, state) => BlogScreen()),
        GoRoute(
          path: '/buy_herbs',
          builder: (context, state) => BuyHerbsmedicince(),
        ),
        GoRoute(
          path: '/herbs_buy_now',
          builder: (context, state) => CurcuminProductUI(),
        ),
        GoRoute(
          path: '/single_herbformulation',
          builder: (context, state) => SingleHerbFormulationPage(),
        ),

        GoRoute(
          path: '/case_discussions',
          builder: (context, state) => CaseDiscussions(),
        ),

        GoRoute(path: '/my_matches', builder: (context, state) => MyMatches()),
        //inbox
        GoRoute(
          path: '/messages',
          builder: (context, state) => MessageScreen(),
        ),
        GoRoute(
          path: '/inbox_received',
          builder: (context, state) => ReceivedScreen(),
        ),
        GoRoute(path: '/inbox_sent', builder: (context, state) => SentScreen()),
        GoRoute(
          path: '/inbox_accepted',
          builder: (context, state) => AcceptedScreen(),
        ),
        GoRoute(
          path: '/inbox_deleted',
          builder: (context, state) => DeletedScreen(),
        ),
        // yoga goroutes............
        GoRoute(
          path: '/welcome_screen',
          builder: (context, state) => WelcomeYogaScreen(),
        ),
        GoRoute(
          path: '/one_to_one_yogareg',
          builder: (context, state) => OnetoOneYogaReg(),
        ),
        GoRoute(
          path: '/one_to_one_sessions',
          builder: (context, state) => OneToOneSessions(),
        ),
        GoRoute(
          path: '/onetoone_sessions_booking',
          builder: (context, state) => BookingConfirmation(),
        ),
        GoRoute(
          path: '/online_meditation',
          builder: (context, state) => MeditationInstructors(),
        ),
        GoRoute(
          path: '/testimonials',
          builder: (context, state) => Testimonials(),
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
