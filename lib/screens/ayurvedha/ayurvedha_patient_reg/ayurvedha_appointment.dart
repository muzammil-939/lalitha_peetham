import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaAppointment extends StatefulWidget {
  const AyurvedhaAppointment({super.key});

  @override
  State<AyurvedhaAppointment> createState() => _AyurvedhaAppointmentState();
}

class _AyurvedhaAppointmentState extends State<AyurvedhaAppointment> {
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
       child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(200, 50, 200, 100),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.home, size: 16, color: Colors.black),
                      Text(' / ', style: TextStyle(color: Colors.black, fontSize: 14)),
                      Text('AYURVEDA CONSULTANCY', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                      Text(' // ', style: TextStyle(color: Colors.black, fontSize: 14)),
                      Text('APPOINTMENT', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              // Header with progress indicators
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: const Text(
                  'REGISTRATION SUCCESSFUL',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Column(
                  children: [
                    // Progress indicators with checkmarks
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildProgressCircle(true),
                        _buildProgressLine(true),
                        _buildProgressCircle(true),
                        _buildProgressLine(true),
                        _buildProgressCircle(true),
                      ],
                    ),
                    const SizedBox(height: 80),
                    
                    // Successfully Registered Button
                    SizedBox(
                      width: 450,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle successfully registered action
                         
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff34AD42),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'SUCCESSFULLY REGISTERED',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.check_circle_outline,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Track Appointment Button
                    SizedBox(
                      width: 450,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle track appointment action
                           context.go('/ayurvedha_appointment_tracking');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD4BB26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'TRACK APPOINTMENT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
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
       ),
    );
  }

  Widget _buildProgressCircle(bool isActive) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFD4BB26) : const Color(0xFFE6D57A),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 24,
          weight: 2.0,
        ),
      ),
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      width: 80,
      height: 3,
      color: isActive ? const Color(0xFFD4BB26) : const Color(0xFFE6D57A),
      margin: const EdgeInsets.symmetric(horizontal: 4),
    );
  }
}