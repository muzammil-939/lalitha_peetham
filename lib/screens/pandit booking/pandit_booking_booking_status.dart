import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

import '../photography/photography_faq_support_wid.dart';

class PanditBookingBookingStatus extends StatefulWidget {
  const PanditBookingBookingStatus({super.key});

  @override
  State<PanditBookingBookingStatus> createState() =>
      _PanditBookingBookingStatusState();
}

class _PanditBookingBookingStatusState
    extends State<PanditBookingBookingStatus> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),

            buildVastuBookingEnquiryFormPage(context),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildherosection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "KEEP TRACK OF YOUR UPCOMING POOJA \n‘SBOOKINGS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/pandit_booking_home',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildVastuBookingEnquiryFormPage(BuildContext context) {
    return Stack(
      children: [
        // 🌄 Full Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),

        // 🌑 Planet Image (top-right)
        Positioned(
          top: 100,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 80,
            width: 80,
          ),
        ),

        // 🌟 Foreground Content
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                const Text(
                  "Access the Full List of Your Scheduled and \nCompleted Poojas",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 900,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_booking_status');
                        },
                        child: _buildNavButton("My Bookings", isActive: true),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_payments_history');
                        },
                        child: _buildNavButton("Payments"),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          context.go('/pandit_booking_faq_support');
                        },
                        child: _buildNavButton("support"),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 60),
                _buildBookingSummaryCard(),
                SizedBox(height: 50),
                _buildBookingSummaryCard(),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBookingSummaryCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left Image Section
          Container(
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/pandit_booking_pooja1'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Right Content Section
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFE4C74D),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20, 25, 25, 0),
              child: Row(
                children: [
                  // Left content section
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Satyanarayan Puja',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Booking id :  PUJ1234678',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'Date        :  15 -07-25',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'Time        :  6:00 Am To 10:00 Am',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Text(
                          'Price        :  ₹ 1800',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  // Right buttons column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:
                            () => context.go('/pandit_booking_reschedule_form'),

                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Reschedule',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:
                            () => context.go('/pandit_booking_cancel_feedback'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'Booked',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String text, {bool isActive = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
