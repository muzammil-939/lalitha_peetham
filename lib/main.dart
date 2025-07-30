import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_fuction_details.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_online_bookings.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_online_payment.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_order_confirm_page.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_paynow_page.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_welcome_screens.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_service_highlights.dart';
import 'package:lalitha_peetham/screens/admin/panchangam.dart';
import 'package:lalitha_peetham/screens/astrology_screens/astrologers_info_section.dart';
import 'package:lalitha_peetham/screens/astrology_screens/astrologers_payment_method.dart';
import 'package:lalitha_peetham/screens/astrology_screens/astrology_welcome_screen.dart';
import 'package:lalitha_peetham/screens/astrology_screens/chart_booking_confirmed_page.dart';
import 'package:lalitha_peetham/screens/astrology_screens/chart_payment_method.dart';
import 'package:lalitha_peetham/screens/astrology_screens/chart_privetly_with_expert.dart';
import 'package:lalitha_peetham/screens/astrology_screens/choose_your_astrologers.dart';
import 'package:lalitha_peetham/screens/astrology_screens/schedule_a_session_with_astrologers.dart';
import 'package:lalitha_peetham/screens/astrology_screens/talk_to_astrologer.dart';
import 'package:lalitha_peetham/screens/astrology_screens/your_secure_astrologers_connections.dart';
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
import 'package:lalitha_peetham/screens/catering_screens/caterer_menue_details_page.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterer_menue_page.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterer_packages.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterer_product_dishes.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterer_product_list.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterer_recent_screen.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterer_recents_dashboard.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterer_saved_menue.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterers_payment_method.dart';
import 'package:lalitha_peetham/screens/catering_screens/caterers_review_checkout.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_about_us.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_booking_confirm_page.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_login_page.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_register_page.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_welcome_screen.dart';
import 'package:lalitha_peetham/screens/event_management/em_basicdetails.dart';
import 'package:lalitha_peetham/screens/event_management/em_booking_summary.dart';
import 'package:lalitha_peetham/screens/event_management/em_contractor_profile.dart';
import 'package:lalitha_peetham/screens/event_management/em_register_contractor.dart';
import 'package:lalitha_peetham/screens/event_management/em_register_vendor.dart';
import 'package:lalitha_peetham/screens/event_management/em_registered_successful.dart';
import 'package:lalitha_peetham/screens/event_management/em_service_details.dart';
import 'package:lalitha_peetham/screens/event_management/em_welcome_screen.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_event.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_home.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_order_corfirm.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_product.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_avaiability.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_bussinesdetails.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_dash.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_notisettings.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_profile.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_settings.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_reviews.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_vendor_basicdetails.dart';
import 'package:lalitha_peetham/screens/e_store/gs_add_to_cart.dart';
import 'package:lalitha_peetham/screens/e_store/gs_booking_onfirm_page.dart';
import 'package:lalitha_peetham/screens/e_store/gs_cmplt_final_payment.dart';
import 'package:lalitha_peetham/screens/e_store/gs_delivery_address_page.dart';
import 'package:lalitha_peetham/screens/e_store/gs_order_summary.dart';
import 'package:lalitha_peetham/screens/e_store/gs_product_page.dart';
import 'package:lalitha_peetham/screens/e_store/gs_shop_all_products.dart';
import 'package:lalitha_peetham/screens/e_store/gs_whishlist.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_aboutus.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_book_hall.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_bookingsummary.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_halls_search.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_home.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_inquire.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_my_bookings.dart';
import 'package:lalitha_peetham/screens/hall_booking/hall_booking_venues.dart';
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
import 'package:lalitha_peetham/screens/nitya_pooja_screens/about_ganesh_pooja.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/contact_offline_page.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_bookings_page.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_confirm_page.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_packages.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_payment_page.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_renewal_cmplt_page.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_renewal_deatils.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/nityapooja_subscriptionform.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/poojas_page.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/proceed_to_final_payment.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/review_check_out_page.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_astrologer_cons.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_astrologer_cons_book.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_call_request.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_contactus.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_event_specific.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_faq.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_finder.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_home.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_messages.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_notifications.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_payment_success.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_reminders.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_upcoming_muhurthams.dart';
import 'package:lalitha_peetham/screens/online_pooja/about_satyanarayana_pooja.dart';
import 'package:lalitha_peetham/screens/online_pooja/online_booking_page.dart';
import 'package:lalitha_peetham/screens/online_pooja/online_pooja_support_section.dart';
import 'package:lalitha_peetham/screens/online_pooja/payment_summary_page.dart';
import 'package:lalitha_peetham/screens/online_pooja/pooja_service_confirm_page.dart';
import 'package:lalitha_peetham/screens/online_pooja/pooja_summary.dart';
import 'package:lalitha_peetham/screens/online_pooja/reschedule_page.dart';
import 'package:lalitha_peetham/screens/online_pooja/request_for_pandit_page.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/book_a_session_vastupooja.dart';
import 'package:lalitha_peetham/screens/online_pooja/book_e_pooja.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/checkout_expert_vastupooja.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/cmplt_payment_confirm_booking.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/confirm_your_vastu_booking.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/events.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/request_for_pandit.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/support_page.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastu_booking_enquery_form.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_check_out_page.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_welcome_screen.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/your_scheduled_and_cmplt_poojas.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_chat_support.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_confirm.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_confirm_pay.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_download_report.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_expert_card_follow.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_explore_packages.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_faq_support.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_follow_astrologers.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_home.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_payment_status.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_select_packages.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_submit_info.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_upload_your_palm.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_booking_confirmed.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_booking_status.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_cancel_feedback.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_chat_support.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_choose_experts.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_faq_support.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_form.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_ganesh_pooja.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_home.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_offline_booking.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_packages.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_payment.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_payments_history.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_payments_status.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_reschedule_confirmation.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_reschedule_form.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_satyanarayana_pooja.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_summary.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_waiting.dart';
import 'package:lalitha_peetham/screens/photography/photography_booking_confirm.dart';
import 'package:lalitha_peetham/screens/photography/photography_bookings_status.dart';
import 'package:lalitha_peetham/screens/photography/photography_chat_support.dart';
import 'package:lalitha_peetham/screens/photography/photography_chat_support_form.dart';
import 'package:lalitha_peetham/screens/photography/photography_contact_form.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_support.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_support_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_home.dart';
import 'package:lalitha_peetham/screens/photography/photography_packages.dart';
import 'package:lalitha_peetham/screens/photography/photography_packages_2.dart';
import 'package:lalitha_peetham/screens/photography/photography_packages_3.dart';
import 'package:lalitha_peetham/screens/photography/photography_packages_4.dart';
import 'package:lalitha_peetham/screens/photography/photography_payment.dart';
import 'package:lalitha_peetham/screens/photography/photography_payments_status.dart';
import 'package:lalitha_peetham/screens/photography/photography_portfolio.dart';
import 'package:lalitha_peetham/screens/photography/photography_services.dart';
import 'package:lalitha_peetham/screens/photography/photography_subs_packages.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/complete_your_purchase.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/learn_pooja_vidhanam.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_contact.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_courses.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_home_screen.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_live_chart.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_live_classes.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_my_dashboard.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_my_purchase.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_purchase_successful.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_upcomming_liveclasses.dart';
import 'package:lalitha_peetham/screens/real_estate/rs_dashboard.dart';
import 'package:lalitha_peetham/screens/real_estate_user/real_estate_welcome_page.dart';
import 'package:lalitha_peetham/screens/refer&earn/refer_and_earn.dart';
import 'package:lalitha_peetham/screens/yoga_screens/backpain_booking.dart';
import 'package:lalitha_peetham/screens/yoga_screens/general_yoga.dart';
import 'package:lalitha_peetham/screens/yoga_screens/mindful_meditation.dart';
import 'package:lalitha_peetham/screens/yoga_screens/mindful_meditation_confirm.dart';
import 'package:lalitha_peetham/screens/yoga_screens/one_to_one_sessions.dart';
import 'package:lalitha_peetham/screens/yoga_screens/one_to_one_yogareg.dart';
import 'package:lalitha_peetham/screens/yoga_screens/onetoone_sessions_book.dart';
import 'package:lalitha_peetham/screens/yoga_screens/online_meditation.dart';
import 'package:lalitha_peetham/screens/yoga_screens/pregnacy_yoga.dart';
import 'package:lalitha_peetham/screens/yoga_screens/pregnacy_yoga_confirm.dart';
import 'package:lalitha_peetham/screens/yoga_screens/pregnacy_yoga_join.dart';
import 'package:lalitha_peetham/screens/yoga_screens/teacher_reg_success.dart';
import 'package:lalitha_peetham/screens/yoga_screens/testimonials.dart';
import 'package:lalitha_peetham/screens/yoga_screens/testimonials_certificate.dart';
import 'package:lalitha_peetham/screens/yoga_screens/theraphy_for_backpain.dart';
import 'package:lalitha_peetham/screens/yoga_screens/therapy_backpain_form.dart';
import 'package:lalitha_peetham/screens/yoga_screens/welcome_yoga_screen.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_booking_confirm.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_corporates_confirm.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_corporates_form.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_corporates_order.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_corporates_select.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_kids_confirm.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_kids_form.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_kids_order.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_for_kids_select.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_payment.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_teacher_reg.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_teacher_reg_2.dart';
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

        //HALL BOOKING
        GoRoute(
          path: '/hall_booking_home',
          builder: (context, state) => const HallBookingHome(),
        ),
        GoRoute(
          path: '/hall_booking_book_hall',
          builder: (context, state) => HallBookingBookHall(),
        ),
        GoRoute(
          path: '/hall_booking_venues',
          builder: (context, state) => HallBookingVenues(),
        ),
        GoRoute(
          path: '/hall_booking_hall_search',
          builder: (context, state) => HallBookingHallsSearch(),
        ),
        GoRoute(
          path: '/hall_booking_booking_summary',
          builder: (context, state) => HallBookingBookingsummary(),
        ),
        GoRoute(
          path: '/hall_booking_aboutus',
          builder: (context, state) => const HallBookingAboutus(),
        ),
        GoRoute(
          path: '/hall_booking_Inquire',
          builder: (context, state) => HallBookingInquire(),
        ),
        GoRoute(
          path: '/hall_booking_my_bookings',
          builder: (context, state) => const HallBookingMyBookings(),
        ),

        //ONLINE MUHURTHA
        GoRoute(
          path: '/online_muhurthas_home',
          builder: (context, state) => const OnlineMuhurthasHome(),
        ),
        GoRoute(
          path: '/online_muhurthas_finder',
          builder: (context, state) => const OnlineMuhurthasFinder(),
        ),
        GoRoute(
          path: '/online_muhurthas_messages',
          builder: (context, state) => OnlineMuhurthasMessages(),
        ),
        GoRoute(
          path: '/online_muhurthas_notifications',
          builder: (context, state) => const OnlineMuhurthasNotifications(),
        ),
        GoRoute(
          path: '/online_muhurthas_payment_success',
          builder: (context, state) => const OnlineMuhurthasPaymentSuccess(),
        ),
        GoRoute(
          path: '/online_muhurthas_reminders',
          builder: (context, state) => const OnlineMuhurthasReminders(),
        ),
        GoRoute(
          path: '/online_muhurthas_upcoming_muhurthams',
          builder:
              (context, state) => const OnlineMuhurthasUpcomingMuhurthams(),
        ),
        GoRoute(
          path: '/online_muhurthas_astrologer_cons',
          builder:
              (context, state) => const OnlineMuhurthasAstrologerConsultation(),
        ),
        GoRoute(
          path: '/online_muhurthas_astrologer_cons_book',
          builder:
              (context, state) => const OnlineMuhurthasAstrologerConsBook(),
        ),
        GoRoute(
          path: '/online_muhurthas_call_request',
          builder: (context, state) => const OnlineMuhurthasCallRequest(),
        ),
        GoRoute(
          path: '/online_muhurthas_contactus',
          builder: (context, state) => const OnlineMuhurthasContactus(),
        ),
        GoRoute(
          path: '/online_muhurthas_event_specific',
          builder: (context, state) => const OnlineMuhurthasEventSpecific(),
        ),
        GoRoute(
          path: '/online_muhurthas_faq',
          builder: (context, state) => const OnlineMuhurthasFaq(),
        ),

        //Pandit Booking
        GoRoute(
          path: '/pandit_booking_home',
          builder: (context, state) => const PanditBookingHome(),
        ),
        GoRoute(
          path: '/pandit_booking_packages',
          builder: (context, state) => const PanditBookingPackages(),
        ),
        GoRoute(
          path: '/pandit_booking_form',
          builder: (context, state) => const PanditBookingForm(),
        ),
        GoRoute(
          path: '/pandit_booking_payment',
          builder: (context, state) => const PanditBookingPayment(),
        ),
        GoRoute(
          path: '/pandit_booking_summary',
          builder: (context, state) => const PanditBookingSummary(),
        ),
        GoRoute(
          path: '/pandit_booking_waiting',
          builder: (context, state) => const PanditBookingWaiting(),
        ),
        GoRoute(
          path: '/pandit_booking_booking_confirmed',
          builder: (context, state) => const PanditBookingBookingConfirmed(),
        ),

        //YET TO BE ASSIGNED
        GoRoute(
          path: '/pandit_booking_booking_status',
          builder: (context, state) => const PanditBookingBookingStatus(),
        ),
        GoRoute(
          path: '/pandit_booking_cancel_feedback',
          builder: (context, state) => const PanditBookingCancelFeedback(),
        ),
        GoRoute(
          path: '/pandit_booking_chat_support',
          builder: (context, state) => const PanditBookingChatSupport(),
        ),
        GoRoute(
          path: '/pandit_booking_choose_experts',
          builder: (context, state) => const PanditBookingChooseExperts(),
        ),
        GoRoute(
          path: '/pandit_booking_faq_support',
          builder: (context, state) => const PanditBookingFaqSupport(),
        ),
        GoRoute(
          path: '/pandit_booking_ganesh_pooja',
          builder: (context, state) => const PanditBookingGaneshPooja(),
        ),
        GoRoute(
          path: '/pandit_booking_satyanarayana_pooja',
          builder: (context, state) => const PanditBookingSatyanarayanaPooja(),
        ),
        GoRoute(
          path: '/pandit_booking_offline_booking',
          builder: (context, state) => const PanditBookingOfflineBooking(),
        ),
        GoRoute(
          path: '/pandit_booking_payments_history',
          builder: (context, state) => const PanditBookingPaymentsHistory(),
        ),
        GoRoute(
          path: '/pandit_booking_payment_status',
          builder: (context, state) => const PanditBookingPaymentsStatus(),
        ),
        GoRoute(
          path: '/pandit_booking_reschedule_confirmation',
          builder:
              (context, state) => const PanditBookingRescheduleConfirmation(),
        ),
        GoRoute(
          path: '/pandit_booking_reschedule_form',
          builder: (context, state) => const PanditBookingRescheduleForm(),
        ),

        //PALM READING SECTION
        GoRoute(
          path: '/palm_reading_home',
          builder: (context, state) => const PalmReadingHome(),
        ),
        GoRoute(
          path: '/palm_reading_submit_info',
          builder: (context, state) => const PalmReadingSubmitInfo(),
        ),
        GoRoute(
          path: '/palm_reading_upload_your_palm',
          builder: (context, state) => const PalmReadingUploadYourPalm(),
        ),
        GoRoute(
          path: '/palm_reading_follow_astrologers',
          builder: (context, state) => const PalmReadingFollowAstrologers(),
        ),
        GoRoute(
          path: '/palm_reading_download_report',
          builder: (context, state) => const PalmReadingDownloadReport(),
        ),

        GoRoute(
          path: '/palm_reading_explore_packages',
          builder: (context, state) => const PalmReadingExplorePackages(),
        ),
        GoRoute(
          path: '/palm_reading_select_packages',
          builder: (context, state) => const PalmReadingSelectPackages(),
        ),
        GoRoute(
          path: '/palm_reading_confirm',
          builder: (context, state) => const PalmReadingConfirm(),
        ),
        GoRoute(
          path: '/palm_reading_confirm_pay',
          builder: (context, state) => const PalmReadingConfirmPay(),
        ),
        GoRoute(
          path: '/palm_reading_chat_support',
          builder: (context, state) => const PalmReadingChatSupport(),
        ),
        GoRoute(
          path: '/palm_reading_faq_support',
          builder: (context, state) => const PalmReadingFaqSupport(),
        ),
        GoRoute(
          path: '/palm_reading_payment_status',
          builder: (context, state) => const PalmReadingPaymentStatus(),
        ),

        //Photography Section
        GoRoute(
          path: '/photography_home',
          builder: (context, state) => const PhotographyHome(),
        ),
        GoRoute(
          //1
          path: '/photography_contact_form',
          builder: (context, state) => const PhotographyContactForm(),
        ),
        GoRoute(
          //2
          path: '/photography_services',
          builder: (context, state) => const PhotographyServices(),
        ),
        GoRoute(
          path: '/photography_packages',
          builder: (context, state) => const PhotographyPackages(),
        ),
        GoRoute(
          path: '/photography_packages_2',
          builder: (context, state) => const PhotographyPackages2(),
        ),
        GoRoute(
          path: '/photography_packages_3',
          builder: (context, state) => const PhotographyPackages3(),
        ),
        GoRoute(
          path: '/photography_packages_4',
          builder: (context, state) => const PhotographyPackages4(),
        ),
        GoRoute(
          path: '/photography_payment_page',
          builder: (context, state) => const PhotographyPayment(),
        ),
        GoRoute(
          path: '/photography_booking_confirm_page',
          builder: (context, state) => const PhotographyBookingConfirm(),
        ),

        GoRoute(
          path: '/Photography_Bookings_Status',
          builder: (context, state) => const PhotographyBookingsStatus(),
        ),
        GoRoute(
          path: '/photography_SubsPackages',
          builder: (context, state) => const PhotographySubsPackages(),
        ),
        GoRoute(
          path: '/photography_paymentsStatus',
          builder: (context, state) => const PhotographyPaymentsStatus(),
        ),
        GoRoute(
          path: '/photography_faq_support',
          builder: (context, state) => const PhotographyFaqSupport(),
        ),
        GoRoute(
          path: '/photography_chat_support_form',
          builder: (context, state) => const PhotographyChatSupportForm(),
        ),
        GoRoute(
          path: '/photography_chat_support',
          builder: (context, state) => const PhotographyChatSupport(),
        ),

        //ADMIN PANCHANGAM
        GoRoute(
          path: '/admin_panchangam',
          builder: (context, state) => const AdminPanchangam(),
        ),

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
        GoRoute(
          path: '/testimonials_certificate',
          builder: (context, state) => TestimonialsCertificate(),
        ),
        GoRoute(
          path: '/pregnancy_yoga',
          builder: (context, state) => PregnacyYoga(),
        ),
        GoRoute(
          path: '/yoga_theraphy_for_backpain',
          builder: (context, state) => TherapyForBackpain(),
        ),
        GoRoute(
          path: '/theraphy_backpain_form',
          builder: (context, state) => TherapyForBackPainForm(),
        ),
        GoRoute(
          path: '/yoga_confirm',
          builder: (context, state) => YogaOrderConfirm(),
        ),
        GoRoute(
          path: '/yoga_payment',
          builder: (context, state) => YogaPayment(),
        ),
        GoRoute(
          path: '/yoga_teacher_reg',
          builder: (context, state) => YogaTeacherReg(),
        ),
        GoRoute(
          path: '/yoga_teacher_reg_2',
          builder: (context, state) => YogaTeacherReg2(),
        ),
        GoRoute(
          path: '/yoga_teacher_regsuccess',
          builder: (context, state) => YogaTeacherRegSuccess(),
        ),
        GoRoute(
          path: '/general_yoga',
          builder: (context, state) => GeneralYoga(),
        ),
        GoRoute(
          path: '/mindful_meditation',
          builder: (context, state) => MindfulMeditation(),
        ),
        GoRoute(
          path: '/mindful_meditation_confirm',
          builder: (context, state) => MindfulMeditationConfirm(),
        ),
        GoRoute(
          path: '/therapy_for_backpain_booking',
          builder: (context, state) => TherapyForBackpainBooking(),
        ),
        GoRoute(
          path: '/pregnancy_yoga_join',
          builder: (context, state) => PregnacyYogaJoin(),
        ),
        GoRoute(
          path: '/pregnancy_yoga_confirm',
          builder: (context, state) => PregnacyYogaConfirm(),
        ),

        // SANNAI MELAM
        GoRoute(
          path: '/sanni_melam_welcome_screen',
          builder: (context, state) => SannaiMelamWelcomeScreens(),
        ),
        GoRoute(
          path: '/sanni_function_deatis',
          builder: (context, state) => SannaiFuctionDetails(),
        ),
        GoRoute(
          path: '/sannai_melam_online_bookings',
          builder: (context, state) => SannaiMelamOnlineBookings(),
        ),
        GoRoute(
          path: '/sannai_service_highlights_1',
          builder: (context, state) => SannaiServiceHighlights(),
        ),
        GoRoute(
          path: '/sannai_melam_booknow',
          builder: (context, state) => SannaiMelamPaynowPage(),
        ),
        GoRoute(
          path: '/sannai_melam_payment',
          builder: (context, state) => SannaiMelamOnlinePayment(),
        ),
        GoRoute(
          path: '/sannai_melam_order_confirm',
          builder: (context, state) => SannaiMelamOrderConfirmPage(),
        ),


        //event management
        GoRoute(
          path: '/em_welcome_screen',
          builder: (context, state) => EmWelcomeScreen(),
        ),
        GoRoute(
          path: '/em_basicdetails',
          builder: (context, state) => EmBasicdetails(),
        ),
        GoRoute(
          path: '/em_contractor_profiles',
          builder: (context, state) => EmContractorProfile(),
        ),
        GoRoute(
          path: '/em_service_details',
          builder: (context, state) => EmServiceDetails(),
        ),
        GoRoute(
          path: '/em_booking_summary',
          builder: (context, state) => EmBookingSummary(),
        ),
        GoRoute(
          path: '/em_register_contractor',
          builder: (context, state) => EmRegisterContractor(),
        ),
        GoRoute(
          path: '/em_register_vendor',
          builder: (context, state) => EmRegisterVendor(),
        ),
        GoRoute(
          path: '/em_register_vendor_successfull',
          builder: (context, state) => EmRegisteredSuccessful(),
        ),

        // Flower Decoration
        GoRoute(
          path: '/flower_deco_home',
          builder: (context, state) => FlowerDecoHome(),
        ),
        GoRoute(
          path: '/flower_deco_event',
          builder: (context, state) => FlowerDecoEvent(),
        ),
        GoRoute(
          path: '/flower_deco_product',
          builder: (context, state) => FlowerDecoProduct(),
        ),
        GoRoute(
          path: '/flower_deco_order_corfirm',
          builder: (context, state) => FlowerDecoOrderCorfirm(),
        ),

        // Flower Decoration Vendor
        GoRoute(
          path: '/flower_deco_vendor_dash',
          builder: (context, state) => FlowerDecoVendorDash(),
        ),
        GoRoute(
          path: '/flower_deco_vendor_profile',
          builder: (context, state) => FlowerDecoVendorProfile(),
        ),

        GoRoute(
          path: '/flower_vendor_basicdetails',
          builder: (context, state) => FlowerVendorBasicdetails(),
        ),
        GoRoute(
          path: '/flower_deco_vendor_bussinesdetails',
          builder: (context, state) => FlowerDecoBussinesdetails(),
        ),
        GoRoute(
          path: '/flower_deco_vendor_avaiability',
          builder: (context, state) => FlowerDecoAvaiability(),
        ),
        GoRoute(
          path: '/flower_deco_vendor_notisettings',
          builder: (context, state) => FlowerDecoVendorNotiSettings(),
        ),
        GoRoute(
          path: '/flower_deco_vendor_settings',
          builder: (context, state) => FlowerDecoVendorSettings(),
        ),

        GoRoute(
          path: '/flower_deco_vendor_reviews',
          builder: (context, state) => FlowerDecoVendorReviews(),
        ),

        //YOGA FOR CORPORATES
        GoRoute(
          path: '/yoga_for_corporates_select',
          builder: (context, state) => YogaForCorporatesSelect(),
        ),
        GoRoute(
          path: '/yoga_for_corporates_order',
          builder: (context, state) => YogaForCorporatesOrder(),
        ),
        GoRoute(
          path: '/yoga_for_corporates_confirm',
          builder: (context, state) => YogaForCorporatesConfirm(),
        ),
        GoRoute(
          path: '/yoga_for_corporates_form',
          builder: (context, state) => YogaForCorporatesForm(),
        ),

        //Yoga For Kids
        GoRoute(
          path: '/yoga_for_kids_form',
          builder: (context, state) => YogaForKidsForm(),
        ),
        GoRoute(
          path: '/yoga_for_kids_confirm',
          builder: (context, state) => YogaForKidsConfirm(),
        ),
        GoRoute(
          path: '/yoga_for_kids_order',
          builder: (context, state) => YogaForKidsOrder(),
        ),
        GoRoute(
          path: '/yoga_for_kids_select',
          builder: (context, state) => YogaForKidsSelect(),
        ),

        // POOJA VIDHANAM
        GoRoute(
          path: '/pv_home_screen',
          builder: (context, state) => PvHomeScreen(),
        ),
        GoRoute(
          path: '/pv_live_classes',
          builder: (context, state) => PvLiveClasses(),
        ),
        GoRoute(path: '/pv_courses', builder: (context, state) => PvCourses()),
        GoRoute(
          path: '/pv_my_purchase',
          builder: (context, state) => PvMyPurchase(),
        ),
        GoRoute(
          path: '/pv_purchase_successful',
          builder: (context, state) => PvPurchaseSuccessful(),
        ),

        GoRoute(
          path: '/learn_pooja_vidhanam',
          builder: (context, state) => LearnPoojaVidhanam(),
        ),
        GoRoute(
          path: '/cmplt_your_purchase',
          builder: (context, state) => CompleteYourPurchase(),
        ),
        GoRoute(path: '/pv_contact', builder: (context, state) => PvContact()),
        GoRoute(
          path: '/pv_mydashboard',
          builder: (context, state) => PvMyDashboard(),
        ),
        GoRoute(
          path: '/pv_live_chart',
          builder: (context, state) => PvLiveChart(),
        ),
        GoRoute(
          path: '/pv_upcomming_liveclasses',
          builder: (context, state) => PvUpcommingLiveclasses(),
        ),

        GoRoute(
          path: '/real_estate_dashboard',
          builder: (context, state) => RsDashboard(),
        ),

        // ONLINE VASTU PROPERTY
        GoRoute(
          path: '/online_vastu_pooja',
          builder: (context, state) => VastupoojaWelcomeScreen(),
        ),
        GoRoute(
          path: '/vastu_expert',
          builder: (context, state) => CheckoutExpertVastupooja(),
        ),
        GoRoute(
          path: '/book_a_session_vastupooja',
          builder: (context, state) => BookASessionVastupooja(),
        ),

        GoRoute(
          path: '/vastupooja_booking_enquery_form',
          builder: (context, state) => VastuBookingEnqueryForm(),
        ),
        GoRoute(
          path: '/vastupooja_check_out_form',
          builder: (context, state) => VastupoojaCheckOutPage(),
        ),
        GoRoute(
          path: '/request_for_pandit',
          builder: (context, state) => RequestForPandit(),
        ),
        GoRoute(
          path: '/cmplt_payment_confirm_booking',
          builder: (context, state) => CmpltPaymentConfirmBooking(),
        ),
        GoRoute(
          path: '/confirm_your_vastu_booking',
          builder: (context, state) => ConfirmYourVastuBooking(),
        ),
        GoRoute(
          path: '/your_scheduled_cmplt_poojas',
          builder: (context, state) => YourScheduledAndCmpltPoojas(),
        ),
        GoRoute(path: '/events_page', builder: (context, state) => Events()),
        GoRoute(
          path: '/support_page',
          builder: (context, state) => SupportPage(),
        ),

        //.........Online Pooja.......
        GoRoute(
          path: '/booking_e_pooja',
          builder: (context, state) => BookEPooja(),
        ),
        GoRoute(
          path: '/about_satyanarayana_pooja',
          builder: (context, state) => AboutSatyanarayanaPooja(),
        ),
        GoRoute(
          path: '/online_booking',
          builder: (context, state) => OnlineBookingPage(),
        ),
        GoRoute(
          path: '/pooja_summary',
          builder: (context, state) => PoojaSummary(),
        ),
        GoRoute(
          path: '/payment_summary',
          builder: (context, state) => PaymentSummaryPage(),
        ),
        GoRoute(
          path: '/request_forpandit_page',
          builder: (context, state) => RequestForPanditPage(),
        ),
        GoRoute(
          path: '/reschedule_page',
          builder: (context, state) => ReschedulePage(),
        ),
        GoRoute(
          path: '/onlinepooja_SupportSection',
          builder: (context, state) => OnlinePoojaSupportSection(),
        ),
          GoRoute(
          path: '/pooja_service_confirm_page',
          builder: (context, state) => PoojaServiceConfirmPage(),
        ),

      

        //...................NITYA POOJA SUBSCRITION...............
        GoRoute(
          path: '/poojas_page',
          builder: (context, state) => PoojasPage(),
        ),
        GoRoute(
          path: '/about_ganesh_poojas_page',
          builder: (context, state) => AboutGaneshPooja(),
        ),
        GoRoute(
          path: '/nityapooja_packages',
          builder: (context, state) => NityapoojaPackages(),
        ),
        GoRoute(
          path: '/nityapooja_subscription_form',
          builder: (context, state) => NityapoojaSubscriptionform(),
        ),
        GoRoute(
          path: '/nityapooja_review_checkout_page',
          builder: (context, state) => ReviwCheckOutPage(),
        ),
        GoRoute(
          path: '/nityapooja_payment_page',
          builder: (context, state) => NityapoojaPaymentPage(),
        ),
        GoRoute(
          path: '/nityapooja_booking_page',
          builder: (context, state) => NityapoojaBookingsPage(),
        ),
        GoRoute(
          path: '/nityapooja_renewaldetails_page',
          builder: (context, state) => NityapoojaRenewalDeatils(),
        ),
        GoRoute(
          path: '/nityapooja_proceed_final_payment',
          builder: (context, state) => ProceedToFinalPayment(),
        ),

        GoRoute(
          path: '/nityapooja_confirm_page',
          builder: (context, state) => NityapoojaConfirmPage(),
        ),
        GoRoute(
          path: '/nityapooja_renewal_cmplt_page',
          builder: (context, state) => NityapoojaRenewalCmpltPage(),
        ),
        GoRoute(
          path: '/nityapooja_offline_contact_page',
          builder: (context, state) => ContactOfflinePage(),
        ),
        
        //...............astrology...........
        GoRoute(
          path: '/astrology_welcomescreen',
          builder: (context, state) => AstrologyWelcomeScreen(),
        ),
        GoRoute(
          path: '/choose_your_astrology',
          builder: (context, state) => ChooseYourAstrologers(),
        ),
        GoRoute(
          path: '/astrologers_info_page',
          builder: (context, state) => AstrologersInfoSection(),
        ),
        GoRoute(
          path: '/astrologers_payment_method',
          builder: (context, state) => AstrologersPaymentMethod(),
        ),
        GoRoute(
          path: '/talk_to_astrologers',
          builder: (context, state) => TalkToAstrologer(),
        ),
        GoRoute(
          path: '/chart_privetly_with_expert',
          builder: (context, state) => ChartPrivetlyWithExpert(),
        ),
        GoRoute(
          path: '/your_secure_astrologers',
          builder: (context, state) => YourSecureAstrologersConnections(),
        ),
        GoRoute(
          path: '/schedule_a_session_with_astrologers',
          builder: (context, state) => ScheduleASessionWithAstrologers(),
        ),
        GoRoute(
          path: '/chart_payment_method',
          builder: (context, state) => ChartPaymentMethod(),
        ),
        GoRoute(
          path: '/chart_booking_confirmed_page',
          builder: (context, state) => ChartBookingConfirmedPage(),
        ),
        GoRoute(
          path: '/caterer_register_page',
          builder: (context, state) => CateringRegisterPage(),
        ),
        GoRoute(
          path: '/caterer_login_page',
          builder: (context, state) => CateringLoginPage(),
        ),
        GoRoute(
          path: '/caterer_about_us',
          builder: (context, state) => CateringAboutUs(),
        ),
        GoRoute(
          path: '/caterer_product_list',
          builder: (context, state) => CatererProductList(),
        ),
        GoRoute(
          path: '/caterer_product_dishes',
          builder: (context, state) => CatererProductDishes(),
        ),
        GoRoute(
          path: '/caterer_saved_menue',
          builder: (context, state) => CatererSavedMenue(),
        ),
        GoRoute(
          path: '/caterer_menue_details_page',
          builder: (context, state) => CatererMenueDetailsPage(),
        ),

        //............CATERING.........
        GoRoute(
          path: '/catering_welcome_screen',
          builder: (context, state) => CateringWelcomeScreen(),
        ),
        GoRoute(
          path: '/catering_caterer_recent',
          builder: (context, state) => CatererRecentScreen(),
        ),
        GoRoute(
          path: '/caterer_menue_page',
          builder: (context, state) => CatererMenuePage(),
        ),
        GoRoute(
          path: '/caterer_packages_page',
          builder: (context, state) => CatererPackages(),
        ),
        GoRoute(
          path: '/caterer_review_checkout',
          builder: (context, state) => CaterersReviewCheckout(),
        ),
        GoRoute(
          path: '/caterer_recent_dashboard',
          builder: (context, state) => CatererRecentsDashboard(),
        ),
        GoRoute(
          path: '/caterer_payments_method',
          builder: (context, state) => CaterersPaymentMethod(),
        ),
        GoRoute(
          path: '/caterer_booking_confirm',
          builder: (context, state) => CateringBookingConfirmPage(),
        ),
        GoRoute(
          path: '/caterer_register_page',
          builder: (context, state) => CateringRegisterPage(),
        ),
        GoRoute(
          path: '/caterer_login_page',
          builder: (context, state) => CateringLoginPage(),
        ),
        GoRoute(
          path: '/caterer_about_us',
          builder: (context, state) => CateringAboutUs(),
        ),
        GoRoute(
          path: '/caterer_product_list',
          builder: (context, state) => CatererProductList(),
        ),
        GoRoute(
          path: '/caterer_product_dishes',
          builder: (context, state) => CatererProductDishes(),
        ),
        GoRoute(
          path: '/caterer_saved_menue',
          builder: (context, state) => CatererSavedMenue(),
        ),
        GoRoute(
          path: '/caterer_menue_details_page',
          builder: (context, state) => CatererMenueDetailsPage(),
        ),

        //.........E - STORE..........
        GoRoute(
          path: '/e_store_shop_allproducts',
          builder: (context, state) => GsShopAllProducts(),
        ),
        GoRoute(
          path: '/gemstone_whishlist',
          builder: (context, state) => GsWhishlist(),
        ),
        GoRoute(
          path: '/gemstone_product_page',
          builder: (context, state) => GsProductPage(),
        ),
        GoRoute(
          path: '/gemstone_add_to_cart',
          builder: (context, state) => GsAddToCart(),
        ),
        GoRoute(
          path: '/gemstone_delivery_address',
          builder: (context, state) => GsDeliveryAddressPage(),
        ),
        GoRoute(
          path: '/gemstone_order_summary',
          builder: (context, state) => GsOrderSummary(),
        ),
        GoRoute(
          path: '/gemstone_cmplt_final_payment_method',
          builder: (context, state) => GsCmpltFinalPayment(),
        ),
        GoRoute(
          path: '/gemstone_booking_confirm',
          builder: (context, state) => GsBookingOnfirmPage(),
        ),

        //..........Real-Estate.........
        GoRoute(
          path: '/real_estate_welcome_page',
          builder: (context, state) => RealEstateWelcomePage(),
        ),

         //..........Referal & Earn.........
        GoRoute(
          path: '/refer_and_earn',
          builder: (context, state) => ReferandEarn(),
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
