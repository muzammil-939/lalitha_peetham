import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingPaymentsStatus extends StatefulWidget {
  const PanditBookingPaymentsStatus({super.key});

  @override
  State<PanditBookingPaymentsStatus> createState() =>
      _PanditBookingPaymentsStatusState();
}

class _PanditBookingPaymentsStatusState
    extends State<PanditBookingPaymentsStatus> {
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
    final screenHeight = MediaQuery.of(context).size.height;

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
                                    child: _buildTabButton("Payments"),
                                  ),
                                  SizedBox(width: 30),
                                  GestureDetector(
                                    onTap:
                                        () => context.go(
                                          '/pandit_booking_payment_status',
                                        ),
                                    child: _buildTabButton(
                                      "Payment Status",
                                      isActive: true,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 60),

                              // Main payment card
                              Container(
                                height: screenHeight,
                                margin: EdgeInsets.all(16),
                                padding: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 10,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Header Section with Image and Details
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Goddess Image
                                        Container(
                                          width: 120,
                                          height: 90,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/pandith_booking_pooja1.png',
                                              ), // Replace with your image
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
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
                                      ],
                                    ),

                                    SizedBox(height: 30),

                                    // Payment Details Section
                                    Text(
                                      'Payment Details',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),

                                    SizedBox(height: 25),

                                    // Payment Table
                                    Container(
                                      child: Column(
                                        children: [
                                          // Table Header
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 12,
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    'Description',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    'Amount',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    'Status',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // Divider Line
                                          Container(
                                            height: 1,
                                            color: Colors.black,
                                            margin: EdgeInsets.symmetric(
                                              vertical: 5,
                                            ),
                                          ),

                                          SizedBox(height: 15),

                                          // Table Rows
                                          _buildPaymentRow(
                                            'Total Cost',
                                            '₹9,999',
                                            '—',
                                            Colors.black,
                                          ),
                                          SizedBox(height: 15),
                                          _buildPaymentRow(
                                            'Advance Paid',
                                            '₹1000',
                                            'Processing',
                                            Colors.black,
                                          ),
                                          SizedBox(height: 15),
                                          _buildPaymentRow(
                                            'Remaining Balance',
                                            '₹8,999',
                                            '✕ Pending',
                                            Colors.red,
                                          ),
                                          SizedBox(height: 15),
                                          _buildPaymentRow(
                                            'Payment Mode',
                                            'PhonePe',
                                            'Processing',
                                            Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 40),

                                    // Support Section
                                    Text(
                                      'Facing Payment Issues? Contact Our Support Team',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    // Contact Button
                                    Container(
                                      width: 140,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Add contact functionality here
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFE6C068),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              25,
                                            ),
                                          ),
                                          elevation: 0,
                                        ),
                                        child: Text(
                                          'Contact',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
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
        Container(
          width: 100,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentRow(
    String description,
    String amount,
    String status,
    Color statusColor,
  ) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            description,
            style: TextStyle(fontSize: 15, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            amount,
            style: TextStyle(fontSize: 15, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            status,
            style: TextStyle(
              fontSize: 15,
              color: statusColor,
              fontWeight:
                  statusColor == Colors.red
                      ? FontWeight.w500
                      : FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
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
