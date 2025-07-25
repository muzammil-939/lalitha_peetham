import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

import '../photography/photography_faq_support_wid.dart';

class PanditBookingPaymentsHistory extends StatefulWidget {
  const PanditBookingPaymentsHistory({super.key});

  @override
  State<PanditBookingPaymentsHistory> createState() =>
      _PanditBookingPaymentsHistoryState();
}

class _PanditBookingPaymentsHistoryState
    extends State<PanditBookingPaymentsHistory> {
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
                "PAYMENT INFO - CLICK TO VIEW",
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
              'assets/images/pandit_booking_home.png',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    const Text(
                      "PAYMENT INFO",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
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
                            child: _buildNavButton("My Bookings"),
                          ),
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              context.go('/pandit_booking_payments_history');
                            },
                            child: _buildNavButton("Payments", isActive: true),
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
                  ],
                ),
              ),

              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 150,
                  vertical: 60,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFEAC63E)),
                  padding: EdgeInsets.all(80),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap:
                                        () => context.go(
                                          '/pandit_booking_payments_history',
                                        ),
                                    child: _buildTabButton(
                                      "Payments",
                                      isActive: true,
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  GestureDetector(
                                    onTap:
                                        () => context.go(
                                          '/pandit_booking_payment_status',
                                        ),
                                    child: _buildTabButton("Payment Status"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 60),
                              // Main payment card
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 50,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 8,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    // Row 1: Image, Client Details, Payment Badges
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Image
                                        Container(
                                          width: 180,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/pandith_booking_pooja1.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 24),

                                        // Client Details
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _buildDetailRow(
                                                'Client Name',
                                                ': Naresh Duggirala',
                                              ),
                                              SizedBox(height: 8),
                                              _buildDetailRow(
                                                'Service Type',
                                                ': Durga Pooja',
                                              ),
                                              SizedBox(height: 8),
                                              _buildDetailRow(
                                                'Date & Time',
                                                ': 15 June 2025,',
                                              ),
                                              SizedBox(height: 8),
                                              _buildDetailRow(
                                                'Location',
                                                ': Lakshmi Gardens, Hyderabad',
                                              ),
                                              SizedBox(height: 8),
                                              _buildDetailRow(
                                                'Package Name',
                                                ': Premium Package',
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(width: 24),

                                        // Payment Badges (in column)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xFFF5C761,
                                                ), // Gold color
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                'Advance Paid: ₹5,000',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0x59FF4031,
                                                ), // Light pink
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                'Due Amount: ₹20,000',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 24),

                                    // Row 2: Payment Details, Action Links, Confirmed Button
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Payment Details
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _buildDetailRow(
                                                'Total Amount:',
                                                '₹25,000',
                                              ),
                                              SizedBox(height: 8),
                                              _buildDetailRow(
                                                'Invoice ID:',
                                                'INV-2025-0610-001',
                                              ),
                                              SizedBox(height: 8),
                                              _buildDetailRow(
                                                'Payment Status:',
                                                'Partially Paid',
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(width: 40),

                                        // Action Links
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _buildLinkText(
                                                'Download Invoice (PDF)',
                                              ),
                                              SizedBox(height: 8),
                                              _buildLinkText(
                                                'Pay Remaining Balance Now',
                                              ),
                                              SizedBox(height: 8),
                                              _buildLinkText(
                                                'Contact Billing Support',
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(width: 40),

                                        // Confirmed Button
                                        GestureDetector(
                                          onTap: () {
                                            context.go(
                                              '/photography_chart_support_form',
                                            );
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 32,
                                              vertical: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xFF71B023,
                                              ), // Same green as background
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              'Confirmed',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
      ],
    );
  }

  Widget _buildLinkText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        decoration: TextDecoration.underline,
      ),
    );
  }

  Widget _buildTabButton(String text, {bool isActive = false}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        decoration: isActive ? TextDecoration.underline : TextDecoration.none,
        decorationColor: Colors.black,
        decorationThickness: 2,
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
