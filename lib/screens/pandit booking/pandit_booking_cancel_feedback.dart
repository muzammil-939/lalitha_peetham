import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingCancelFeedback extends StatefulWidget {
  const PanditBookingCancelFeedback({super.key});

  @override
  State<PanditBookingCancelFeedback> createState() =>
      _PanditBookingCancelFeedbackState();
}

class _PanditBookingCancelFeedbackState
    extends State<PanditBookingCancelFeedback> {
  String selectedPoojaType = '';
  String selectedCancellationReason = '';
  TextEditingController fullNameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController commentsController = TextEditingController();

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
                "COULD YOU PLEASE LET US KNOW THE REASON FOR \nTHE POOJA CANCELLATION?",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              const Text(
                "Your Feedback Matters – Pooja Cancellation Reason",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),

              Container(
                width: 800,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [buildMainCont()],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildMainCont() {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight * 1.6,
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Header
          Text(
            'Dear karthik',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '🙏 Namaste!',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          SizedBox(height: 20),

          // Main message
          Text(
            'We noticed that your recent pooja booking was cancelled.\n'
            'Could you please let us know the reason for the cancellation?\n'
            'This will help us understand your needs better and improve our\n'
            'service.',
            style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
          ),
          SizedBox(height: 20),

          Text(
            'If there\'s anything we can assist with—rescheduling, change of\n'
            'pandit, or pooja type—please feel free to contact us.\n'
            'We\'re always here to help you with your spiritual needs.',
            style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
          ),
          SizedBox(height: 20),

          // Contact info
          Row(
            children: [
              Text('📞', style: TextStyle(fontSize: 16)),
              SizedBox(width: 8),
              Text(
                'Call / WhatsApp: +91-XXXXXXXXXX',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text('🕐', style: TextStyle(fontSize: 16)),
              SizedBox(width: 8),
              Text(
                'Support Hours: 8:00 AM - 9:00 PM',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ],
          ),
          SizedBox(height: 25),

          // Thank you message
          Text(
            'Thank you for choosing our service.',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          Text(
            'Warm regards,',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          Text(
            'Sree Lalitha peetham',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          Text(
            'Pooja Services Team',
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          SizedBox(height: 30),

          // Form fields
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFD4D4D4),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextField(
                        controller: fullNameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Number',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFD4D4D4),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextField(
                        controller: contactController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25),

          // Checkboxes section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Type of Pooja Booked:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildCheckboxOption('Ganesh Puja', 'ganesh'),
                    _buildCheckboxOption('Satyanarayana Puja', 'satyanarayan'),
                    _buildCheckboxOption('Marriage Puja', 'marriage'),
                    Row(
                      children: [
                        _buildCheckbox('other_pooja'),
                        SizedBox(width: 8),
                        Text(
                          'Other: ',
                          style: TextStyle(fontSize: 13, color: Colors.black87),
                        ),
                        Expanded(
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black87,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reason for Cancellation:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildCancellationOption('Change in Plans', 'change_plans'),
                    _buildCancellationOption(
                      'Family Emergency',
                      'family_emergency',
                    ),
                    _buildCancellationOption('Booked by Mistake', 'mistake'),
                    _buildCancellationOption(
                      'Found Another Pandit',
                      'another_pandit',
                    ),
                    _buildCancellationOption('Rescheduling', 'rescheduling'),
                    Row(
                      children: [
                        _buildCancellationCheckbox('other_reason'),
                        SizedBox(width: 8),
                        Text(
                          'Other: ',
                          style: TextStyle(fontSize: 13, color: Colors.black87),
                        ),
                        Expanded(
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black87,
                                  width: 1,
                                ),
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
          SizedBox(height: 25),

          // Additional comments
          Text(
            'Additional Comments (Optional)',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFD4D4D4),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: commentsController,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(12),
              ),
              style: TextStyle(fontSize: 13),
            ),
          ),
          SizedBox(height: 30),

          // Submit button
          Center(
            child: Container(
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextButton(
                onPressed: () {
                  context.go('/pandit_booking_home');
                  // Handle submit
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckboxOption(String title, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          _buildCheckbox(value),
          SizedBox(width: 8),
          Text(title, style: TextStyle(fontSize: 13, color: Colors.black87)),
        ],
      ),
    );
  }

  Widget _buildCancellationOption(String title, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          _buildCancellationCheckbox(value),
          SizedBox(width: 8),
          Text(title, style: TextStyle(fontSize: 13, color: Colors.black87)),
        ],
      ),
    );
  }

  Widget _buildCheckbox(String value) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: Color(0xFFD4D4D4),
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.black54, width: 1),
      ),
      child:
          selectedPoojaType == value
              ? Icon(Icons.check, size: 12, color: Colors.black87)
              : null,
    );
  }

  Widget _buildCancellationCheckbox(String value) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: Color(0xFFD4D4D4),
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.black54, width: 1),
      ),
      child:
          selectedCancellationReason == value
              ? Icon(Icons.check, size: 12, color: Colors.black87)
              : null,
    );
  }
}
