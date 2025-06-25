import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaFindDoc extends StatelessWidget {
  const AyurvedhaFindDoc({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AyurvedhPageLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Header with breadcrumb
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
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      ' / ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'DOCTOR',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'TOTAL ARTICLES : 1128',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            // Total Articles count
            Center(
              child: SizedBox(
                width: screenWidth * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),

                    // Search bar
                    Container(
                      height: 45,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade700),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search By Title Or Content',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 14,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFE6B800),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'SEARCH',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
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

            SizedBox(height: 50),

            // Article cards
            ...List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: DoctorProfileCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorProfileCard extends StatelessWidget {
  const DoctorProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFF0E7BB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Doctor's profile image
                    Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Icon(
                              Icons.person,
                              size: 150,
                              color: Colors.grey.shade600,
                            ),
                            // Image.asset(
                            //   'assets/profile_placeholder.jpg',
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),

                        SizedBox(height: 40),
                        // Rating and buttons section
                        Row(
                          children: [
                            // Rating section
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ...List.generate(
                                      4,
                                      (index) => Icon(
                                        Icons.star,
                                        color: Color(0xFFFFD700),
                                        size: 20,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Color(0xFFFFD700),
                                      size: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '4.4 (2475 Orders)',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),

                            // Buttons
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    // Doctor details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.munish sood',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFE74C3C),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'M.D (Ayurved) / M.S (Ayurved)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Clinic : Naimittika Clinic',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 12),
                          // Specialization tags
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: [
                              _buildSpecializationTag('🏠', 'Diabetes'),
                              _buildSpecializationTag('', '|'),
                              _buildSpecializationTag('', 'Gastrointestinal'),
                              _buildSpecializationTag('', '|'),
                              _buildSpecializationTag('', 'Infertility'),
                              _buildSpecializationTag('', '|'),
                              _buildSpecializationTag('', 'Sex'),
                              _buildSpecializationTag('', '|'),
                              _buildSpecializationTag('', 'Weight Loss / Gain'),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Experience text
                          Text(
                            'Experienced As Medical Officer In Govt Service And Also As Lecturer.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () => context.go('/doc_profile'),
                                child: Container(
                                  height: 50,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'VISIT DETAILS',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 50),
                              Container(
                                height: 50,
                                width: 240,
                                decoration: BoxDecoration(
                                  color: Color(0xFFB8A632),
                                ),
                                child: Center(
                                  child: Text(
                                    'CONSULT THIS DOCTOR',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      letterSpacing: 0.5,
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
              ],
            ),
          ),
          Container(
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xFFE8D41F),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecializationTag(String icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon.isNotEmpty) ...[
            Text(icon, style: TextStyle(fontSize: 12)),
            SizedBox(width: 4),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFFB8A632),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
