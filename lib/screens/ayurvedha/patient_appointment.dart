import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class PatientAppointment extends StatefulWidget {
  const PatientAppointment({super.key});

  @override
  PatientAppointmentState createState() => PatientAppointmentState();
}

class PatientAppointmentState extends State<PatientAppointment> {
  final _formKey = GlobalKey<FormState>();

  bool consentMedical = true;
  bool consentPolicy = true;

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
               SizedBox(height: 50),
                // Header with progress indicators
            Text(
              'Ayurveda-specific Preferences',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Column(
                children: [
                  // Progress indicators
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildProgressCircle('1', true),
                      _buildProgressLine(true),
                      _buildProgressCircle('2', true),
                      _buildProgressLine(true),
                      _buildProgressCircle('3', true),
                    ],
                  ),
                ])),
              const SizedBox(height: 50),

              const Text(
                'PREFERED TREATMENT MODE*',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildDropdown('Video'),

              const SizedBox(height: 30),
              const Text(
                'PREFERRED LANGUAGE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildDropdown('Tamil'),

              const SizedBox(height: 30),
              const Text(
                'BODY TYPE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildDropdown('Kapha'),

              const SizedBox(height: 30),
              const Text(
                'CHOOSE DEPARTMENT / SPECIALTY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildDropdown('Skin'),

              const SizedBox(height: 30),
              const Text(
                'PREFERED DATE AND TIME',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildDropdown('Skin'),

              const SizedBox(height: 30),
              const Text(
                'UPLOAD PREVIOUS REPORT',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildUploadField('Png Or Jpg Format'),

              const SizedBox(height: 30),
              const Text(
                'UPLOAD PROFILE PICTURE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildUploadField('Png Or Jpg'),

              const SizedBox(height: 30),
              const Text(
                'PAYMENT METHOD',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              _buildUploadField('Png Or Jpg'),

              const SizedBox(height: 40),
              const Text(
                'CONSENT & TERMS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: consentMedical,
                    onChanged: (value) => setState(() => consentMedical = value ?? false),
                    activeColor: Colors.black,
                    side: const BorderSide(color: Colors.black),
                  ),
                  const Expanded(
                    child: Text(
                      'I Agree To Share My Medical History For Ayurveda Consultation',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: consentPolicy,
                    onChanged: (value) => setState(() => consentPolicy = value ?? false),
                    activeColor: Colors.black,
                    side: const BorderSide(color: Colors.black),
                  ),
                  const Expanded(
                    child: Text(
                      'I Accept Terms & Privacy Policy',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: 120,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle submit logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB8A835),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
            
      ),
        );
      
    
      
  }
  Widget _buildProgressCircle(String number, bool isActive) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFB8A835) : Color(0xFFE6D57A),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: isActive ? Colors.white : Color(0xFFB8A835),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      width: 60,
      height: 2,
      color: isActive ? Color(0xFFB8A835) : Color(0xFFE6D57A),
      margin: EdgeInsets.symmetric(horizontal: 4),
    );
  }


  Widget _buildDropdown(String hint) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
      ),
      child: DropdownButton<String>(
        value: hint,
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down),
        underline: const SizedBox(),
        onChanged: (value) {},
        items: [DropdownMenuItem(value: hint, child: Text(hint))],
      ),
    );
  }

  Widget _buildUploadField(String hint) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
      ),
      child: Row(
        children: [
          Expanded(child: Text(hint, style: const TextStyle(color: Colors.black54))),
          const Icon(Icons.upload, size: 18),
        ],
      ),
    );
  }
}
