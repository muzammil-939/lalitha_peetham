import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingRescheduleForm extends StatefulWidget {
  const PanditBookingRescheduleForm({super.key});

  @override
  State<PanditBookingRescheduleForm> createState() =>
      _PanditBookingRescheduleFormState();
}

class _PanditBookingRescheduleFormState
    extends State<PanditBookingRescheduleForm> {
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
                "FILL OUT THE CORRECT INFORMATION TO \nPROCESS YOUR RESCHEDULE REQUEST",
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
                "Pooja Reschedule Request Form",
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

                    // First Row - Full Name and Contact Number
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Full Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    // Second Row - Email Address and Puja Type
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email Address',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
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
                                'Puja Type',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                  ),
                                  dropdownColor: Color(0xFFDFDDDD),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black54,
                                  ),
                                  items: [
                                    DropdownMenuItem(
                                      value: 'Ganesh Puja',
                                      child: Text('Ganesh Puja'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Lakshmi Puja',
                                      child: Text('Lakshmi Puja'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Saraswati Puja',
                                      child: Text('Saraswati Puja'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Durga Puja',
                                      child: Text('Durga Puja'),
                                    ),
                                  ],
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    // Third Row - Date and Time
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
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
                                'Time',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    // Fourth Row - Location and Language
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
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
                                'Language',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFDDDD),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    // Additional Notes - Single field, full width
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Additional Notes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDDDD),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextField(
                            maxLines: null,
                            expands: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(12),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 40),

                    // Continue Button
                    Center(
                      child: Container(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go(
                              '/pandit_booking_reschedule_confirmation',
                            );
                            // Handle continue button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black87,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 2,
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
