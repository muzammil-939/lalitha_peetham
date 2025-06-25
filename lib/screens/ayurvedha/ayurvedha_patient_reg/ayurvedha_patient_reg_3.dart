import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaPatientReg3 extends StatefulWidget {
  const AyurvedhaPatientReg3({super.key});

  @override
  AyurvedhaPatientReg3State createState() => AyurvedhaPatientReg3State();
}

class AyurvedhaPatientReg3State extends State<AyurvedhaPatientReg3> {
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Container(
        padding: EdgeInsets.fromLTRB(200, 50, 200, 150),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFD4BB26),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, size: 16, color: Colors.black),
                    Text(
                      ' / ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'AYURVEDA CONSULTANCY',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' // ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'Registor As A Patient',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),

            // Header with progress indicators
            Text(
              'Contact & Location',
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
                  SizedBox(height: 40),
                  MedicalFormContainer(),
                  SizedBox(height: 40),
                  // Submit Button
                  SizedBox(
                    width: 120,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle submit
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFB8A835),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
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
                ],
              ),
            ),
          ],
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
}

class MedicalFormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Any Existing Illness Section
          _buildFormSection(
            title: "ANY EXISTING ILLNESS",
            isRequired: true,
            placeholder: "Type here",
          ),

          SizedBox(height: 40.0),

          // Symptoms/Reason for Consultation Section
          _buildFormSection(
            title: "SYMPTOMS / REASON FOR CONSULTATION",
            isRequired: true,
            placeholder: "Type here",
          ),

          SizedBox(height: 40.0),

          // Ongoing Medication Section
          _buildFormSection(
            title: "ONGOING MEDICATION",
            isRequired: true,
            placeholder: "Type here",
          ),

          SizedBox(height: 40.0),

          // Allergies Section
          _buildFormSection(
            title: "ALLERGIES (IF ANY)",
            isRequired: true,
            placeholder: "Type here",
          ),
        ],
      ),
    );
  }

  Widget _buildFormSection({
    required String title,
    required bool isRequired,
    required String placeholder,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title with asterisk
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
              if (isRequired)
                TextSpan(
                  text: "*",
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
        ),

        SizedBox(height: 15.0),

        // Text Field
        Container(
          height: 180.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade500, width: 1.0),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            maxLines: null,
            expands: true,
            textAlignVertical: TextAlignVertical.top,
            style: TextStyle(fontSize: 14.0, color: Color(0xFF374151)),
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TextStyle(color: Color(0xFF9CA3AF), fontSize: 14.0),
              contentPadding: EdgeInsets.all(12.0),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
