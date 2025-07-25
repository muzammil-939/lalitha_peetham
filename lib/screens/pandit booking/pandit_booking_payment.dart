import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingPayment extends StatefulWidget {
  const PanditBookingPayment({super.key});

  @override
  State<PanditBookingPayment> createState() => _PanditBookingPaymentState();
}

class _PanditBookingPaymentState extends State<PanditBookingPayment> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildVastuBookingEnquiryFormPage(),
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
                "Find the Perfect Pooja Service Tailored to Your Spiritual Needs",
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

  Widget buildVastuBookingEnquiryFormPage() {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              const Text(
                "Confirm Your Booking with Final Payment",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),

              // Fixed Form Container
              Container(
                width: 800,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFE6C85D), Color(0xFFD4B54A)],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),

                    Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildBulletPoint('Pandit Service Fee: ₹1400'),
                          SizedBox(height: 8),
                          _buildBulletPoint('Samagri Cost: ₹600'),
                          SizedBox(height: 8),
                          _buildBulletPoint('Total Cost: ₹2000'),
                          SizedBox(height: 8),
                          _buildBulletPoint('Advance to Pay Now: ₹500'),
                          SizedBox(height: 8),
                          _buildBulletPoint(
                            'Remaining Amount on Puja Day: ₹1500',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Container(
                        height: 1.5,
                        color: Colors.white,
                        width: double.infinity,
                      ),
                    ),

                    // Payment Method
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 24),

                    // Payment options
                    _buildPaymentOption('assets/paypal_logo.png', 'PayPal'),
                    SizedBox(height: 30),
                    _buildPaymentOption('assets/gpay_logo.png', 'Google Pay'),
                    SizedBox(height: 30),
                    _buildPaymentOption('assets/paytm_logo.png', 'Paytm'),
                    SizedBox(height: 30),
                    _buildPaymentOption(
                      'assets/card_logo.png',
                      'Credit/Debit Card',
                    ),

                    SizedBox(height: 50),

                    // Buttons
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'Back',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                context.go('/pandit_booking_summary');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFffffff),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'continue to payment',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 6,
          height: 6,
          margin: EdgeInsets.only(top: 8, right: 8),
          decoration: BoxDecoration(
            color: Colors.black87,
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentOption(String iconPath, String label) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // You can replace this with actual image assets
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(Icons.payment, color: Colors.grey.shade600, size: 20),
          ),
          SizedBox(width: 16),
          Text(
            'Payment',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
