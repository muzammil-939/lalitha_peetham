import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class YogaTeacherReg2 extends StatefulWidget {
  const YogaTeacherReg2({super.key});

  @override
  _YogaTeacherReg2State createState() => _YogaTeacherReg2State();
}

class _YogaTeacherReg2State extends State<YogaTeacherReg2> {
  String? selectedCertification = 'Myself';
  String? selectedClasses = '100';
  String? selectedYears = '7';
  bool privacyPolicyChecked = true;
  bool termsConditionChecked = false;
  TextEditingController bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top buttons
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildBreadcrumb(),

                // Allow Location button
                Container(
                  width: 280,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      // Background container
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE8D978),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      // Active button overlay
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 200,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFD4B429),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              'Allow Location',
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

                SizedBox(height: 30),

                // Online Form button with toggle design
                Container(
                  width: 280,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      // Background container
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE8D978),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      // Active button overlay
                      Positioned(
                        left: 0,
                        child: Container(
                          width: 200,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFD4B429),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              'Online Form',
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
                SizedBox(height: 40),
                _buildProgressIndicator(),
              ],
            ),

            SizedBox(height: 40),

            // Title
            Text(
              'Yoga Qualification And Experience',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF333333),
                letterSpacing: 0.5,
              ),
            ),

            SizedBox(height: 40),

            // Form Container
            Container(
              padding: EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Row - Certification Type and Total Classes
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Yoga Certification Type
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'YOGA CERTIFICATION TYPE',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3F3E38),
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Color(0xFF8D8D8D)),
                              ),
                              child: DropdownButtonFormField<String>(
                                value: selectedCertification,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                ),
                                items:
                                    [
                                      'Myself',
                                      'Certified Instructor',
                                      'Other',
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedCertification = newValue;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 32),

                      // Total Classes Conducted
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TOTAL CLASSES CONDUCTED',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3F3E38),
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Color(0xFF8D8D8D)),
                              ),
                              child: DropdownButtonFormField<String>(
                                value: selectedClasses,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                ),
                                items:
                                    ['100', '200', '300', '400', '500+'].map((
                                      String value,
                                    ) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedClasses = newValue;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Years of Experience
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'YEARS OF YOGA EXPERIENCE',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3F3E38),
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xFF8D8D8D)),
                        ),
                        child: DropdownButtonFormField<String>(
                          value: selectedYears,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF333333),
                          ),
                          items:
                              [
                                '1',
                                '2',
                                '3',
                                '4',
                                '5',
                                '6',
                                '7',
                                '8',
                                '9',
                                '10+',
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedYears = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Second Row - Professional Info and Upload Video Demo
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Professional Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PROFESSIONAL INFO',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3F3E38),
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Color(0xFF8D8D8D)),
                              ),
                              child: TextField(
                                controller: bioController,
                                maxLines: null,
                                expands: true,
                                textAlignVertical: TextAlignVertical.top,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF999999),
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Write Short Bio',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF999999),
                                  ),
                                  contentPadding: EdgeInsets.all(16),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 32),

                      // Upload Video Demo
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UPLOAD VIDEO DEMO',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3F3E38),
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFD4AF37),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload,
                                      size: 32,
                                      color: Color(0xFF8B7914),
                                    ),
                                    SizedBox(height: 4),
                                    Container(
                                      width: 24,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF8B7914),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Verification Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VERIFICATION',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3F3E38),
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xFF8D8D8D)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'Government Id Proof',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF999999),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFD4AF37),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFF8B7914),
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Checkboxes
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color:
                                  privacyPolicyChecked
                                      ? Color(0xFF4CAF50)
                                      : Colors.transparent,
                              border: Border.all(
                                color:
                                    privacyPolicyChecked
                                        ? Color(0xFF4CAF50)
                                        : Color(0xFFCCCCCC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child:
                                privacyPolicyChecked
                                    ? Icon(
                                      Icons.check,
                                      size: 14,
                                      color: Colors.white,
                                    )
                                    : null,
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                ),
                                children: [
                                  TextSpan(text: 'I Read And Agree To '),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color:
                                  termsConditionChecked
                                      ? Color(0xFF4CAF50)
                                      : Colors.transparent,
                              border: Border.all(
                                color:
                                    termsConditionChecked
                                        ? Color(0xFF4CAF50)
                                        : Color(0xFFCCCCCC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child:
                                termsConditionChecked
                                    ? Icon(
                                      Icons.check,
                                      size: 14,
                                      color: Colors.white,
                                    )
                                    : null,
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                ),
                                children: [
                                  TextSpan(text: 'I Read And Agree To '),
                                  TextSpan(
                                    text: 'Terms And Condition',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),

                  // Submit Button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () => context.go('/yoga_teacher_regsuccess'),
                      child: Container(
                        width: 160,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xFFD4AF37),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildProgressCircle('1', true),
          _buildProgressLine(true),
          _buildProgressCircle('2', true),
        ],
      ),
    );
  }

  Widget _buildProgressCircle(String number, bool isActive) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFB8A835) : const Color(0xFFE6D57A),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: isActive ? Colors.white : const Color(0xFFB8A835),
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
      color: isActive ? const Color(0xFFB8A835) : const Color(0xFFE6D57A),
      margin: const EdgeInsets.symmetric(horizontal: 4),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 16, color: Colors.black),
              Text(
                ' // Register As A Yoga Teacher',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }
}
