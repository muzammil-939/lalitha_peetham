import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/matches_header_layout.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/partner_preference_widget.dart';

class TdyMatches extends StatefulWidget {
  const TdyMatches({super.key});

  @override
  State<TdyMatches> createState() => _TdyMatchesState();
}

class _TdyMatchesState extends State<TdyMatches> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return MatchesHeaderLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Text(
                'New Members Who Match Most Of Your Preferences',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Main Profile Container
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left side - Photo section
                  Container(
                     width: 250,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Profile Image
                        Container(
                          margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              children: [
                                Container(
                                  height: 280,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=600&fit=crop&crop=face',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFD700),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
              
                        // Verified Profile Badge
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFD700),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.verified,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Verified Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  // Right side - Details section
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F1E8),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Tabs
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedTab = 0;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        selectedTab == 0
                                            ? Color(0xFFD4B08A)
                                            : Colors.transparent,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    'Detailed Profile',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          selectedTab == 0
                                              ? Colors.white
                                              : Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedTab = 1;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        selectedTab == 1
                                            ? Color(0xFFD4B08A)
                                            : Colors.transparent,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    'Partner Preferences',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          selectedTab == 1
                                              ? Colors.white
                                              : Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
              
                          SizedBox(height: 24),
              
                          // Content based on selected tab
                          if (selectedTab == 0) ...[
                            // Detailed Profile Content
                            Column(
                              children: [
                                _buildSection('ABOUT KISHORE', [
                                  _buildPill('Id4567842638'),
                                  _buildPill('Profile Managed By Parent'),
                                ]),
              
                                _buildSection('HOBBIES & INTEREST', [
                                  _buildPill('Cooking'),
                                  _buildPill('Dancing'),
                                  _buildPill('Movies'),
                                  _buildPill('Sports'),
                                  _buildPill('Travelling'),
                                ]),
              
                                _buildContactSection(),
              
                                _buildLifeStyleSection(),
              
                                _buildBackgroundSection(),
              
                                _buildHoroscopeSection(),
              
                                _buildFamilySection(),
              
                                _buildEducationSection(),
                              ],
                            ),
                          ] else ...[
                            // Partner Preferences Content
                            PartnerPreferencesWidget(),
                          ],
                        ],
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

  Widget _buildSection(String title, List<Widget> content) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 40,
                  color: Color(0xFFD4B08A),
                ),
              ),
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Wrap(spacing: 6, runSpacing: 6, children: content),
        ],
      ),
    );
  }

  Widget _buildPill(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]!),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.8),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 10, color: Colors.grey[600]),
      ),
    );
  }

  Widget _buildContactSection() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 40,
                  color: Color(0xFFD4B08A),
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Contact Details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.phone, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Contact Number: +91 9047X XXXXX',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.email, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Email ID: XXXXXXXXXXX@Gmail.Com',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.upgrade, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Upgrade Now To View Details',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLifeStyleSection() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 40,
                  color: Color(0xFFD4B08A),
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Life Style',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundSection() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 40,
                  color: Color(0xFFD4B08A),
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Background',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.person, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Hindu, Tamil',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.group, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Vellalar, Sozhiya Vellalar',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.location_on, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Lives In Pattukottai, Tamilnadu, India',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHoroscopeSection() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 40,
                  color: Color(0xFFD4B08A),
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Horoscope Details',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              children: [
                Icon(Icons.hourglass_empty, size: 20, color: Colors.grey[400]),
                SizedBox(height: 6),
                Text(
                  'For The Common Interest Of Members, Quickly',
                  style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Enter Your Astro Details & Unhide His Info.',
                  style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFD4B08A),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add My Details',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 3),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 12,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFamilySection() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 40,
                  color: Color(0xFFD4B08A),
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Family Details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Father Runs A Business',
                style: TextStyle(fontSize: 10, color: Colors.grey[700]),
              ),
              SizedBox(height: 2),
              Text(
                'Mother Is Employed',
                style: TextStyle(fontSize: 10, color: Colors.grey[700]),
              ),
              SizedBox(height: 2),
              Text(
                '1 Brother',
                style: TextStyle(fontSize: 10, color: Colors.grey[700]),
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.location_on, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Tamil Nadu, India',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Text(
                'Family Financial Status',
                style: TextStyle(fontSize: 10, color: Colors.grey[700]),
              ),
              SizedBox(height: 2),
              Text(
                'High - Annual Family Income Is 30 - 70 Lakhs',
                style: TextStyle(fontSize: 10, color: Colors.grey[700]),
              ),
              SizedBox(height: 4),
              Text(
                'Show More',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFFD4B08A),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEducationSection() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 40,
                  color: Color(0xFFD4B08A),
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Education & Career',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.school, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Bachelor\'s Degree',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.work, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Software Engineer',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.location_on, size: 12, color: Colors.grey[600]),
                  SizedBox(width: 6),
                  Text(
                    'Tamil Nadu, India',
                    style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Text(
                'Annual Income: 5-10 Lakhs',
                style: TextStyle(fontSize: 10, color: Colors.grey[700]),
              ),
              SizedBox(height: 4),
              Text(
                'Show More',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFFD4B08A),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
