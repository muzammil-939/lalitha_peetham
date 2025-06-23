import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

import 'matimony_page_layout_2.dart';

class MatrimonialSearch extends StatelessWidget {
  const MatrimonialSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return MatriPageLayoutTwo(
      child: Container(
        width: double.infinity,
        color: Color(0xFFF5F5F5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container with horizontal padding for remaining content
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 150),
                child: Column(
                  children: [
                    // Profile ID Search Section
                    Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFEFE7C0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PROFILE ID SEARCH',
                            style: TextStyle(
                              color: Color(0xFFB8860B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Profile Id',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 14,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                          color: Color(0xFFDDDDDD),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                          color: Color(0xFFDDDDDD),
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD4AF37),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    'Go',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Recent Searches Section
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFEFE7C0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RECENT SEARCHES',
                            style: TextStyle(
                              color: Color(0xFFB8860B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 15),
                          _buildRecentSearchItem(),
                          SizedBox(height: 10),
                          _buildRecentSearchItem(),
                          SizedBox(height: 10),
                          _buildRecentSearchItem(),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Advanced Search Form
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFEFE7C0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RECENT SEARCHES',
                            style: TextStyle(
                              color: Color(0xFFB8860B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 20),

                          // Age Row
                          _buildFormRow('Age', [
                            _buildDropdown('25', width: 80),
                            Text(
                              'to',
                              style: TextStyle(color: Color(0xFF8B6914)),
                            ),
                            _buildDropdown('39', width: 80),
                          ]),

                          SizedBox(height: 15),

                          // Height Row
                          _buildFormRow('Height', [
                            _buildDropdown('5\'0" - 152cm', width: 130),
                            Text(
                              'to',
                              style: TextStyle(color: Color(0xFF8B6914)),
                            ),
                            _buildDropdown('5\'11" - 180cm', width: 130),
                          ]),

                          SizedBox(height: 15),

                          // Marital Status
                          _buildFormRow('Marital Status', [
                            _buildLargeDropdown('Never Married'),
                          ]),

                          SizedBox(height: 15),

                          // Religion
                          _buildFormRow('Religion', [
                            _buildLargeDropdown('Hindu'),
                          ]),

                          SizedBox(height: 15),

                          // Mother Tongue
                          _buildFormRow('Mother Tongue', [
                            _buildLargeDropdown('Tamil'),
                          ]),

                          SizedBox(height: 15),

                          // Community
                          _buildFormRow('Community', [
                            _buildLargeDropdown('Mudaliyar Arcot'),
                          ]),

                          SizedBox(height: 15),

                          // Country Living In
                          _buildFormRow('Country Living In', [
                            _buildLargeDropdown('India'),
                          ]),

                          SizedBox(height: 15),

                          // State Living In
                          _buildFormRow('State Living In', [
                            _buildLargeDropdown('Doesn\'t Matter'),
                          ]),

                          SizedBox(height: 20),

                          // Photo Settings
                          Text(
                            'Photo Settings',
                            style: TextStyle(
                              color: Color(0xFF8B6914),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFFD4AF37),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Visible To All',
                                style: TextStyle(
                                  color: Color(0xFF8B6914),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 30),
                              Icon(
                                Icons.check_box_outline_blank,
                                color: Color(0xFFD4AF37),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Protected Photo',
                                style: TextStyle(
                                  color: Color(0xFF8B6914),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          // Do Not Show
                          Text(
                            'Do Not Show',
                            style: TextStyle(
                              color: Color(0xFF8B6914),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0xFFD4AF37),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Profiles That Me Filtered Me Out',
                                style: TextStyle(
                                  color: Color(0xFF8B6914),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.check_box_outline_blank,
                                color: Color(0xFFD4AF37),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Profiles That I Have Already Viewed',
                                style: TextStyle(
                                  color: Color(0xFF8B6914),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          // Advanced Search Options Link
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Advanced Search Options',
                              style: TextStyle(
                                color: Color(0xFFB8860B),
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),

                          SizedBox(height: 30),

                          // Search and Reset Buttons
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.go('/search_results');
                                },
                                child: Container(
                                  height: 45,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD4AF37),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'SEARCH',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Reset',
                                  style: TextStyle(
                                    color: Color(0xFFB8860B),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecentSearchItem() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFFDDDDDD)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hindu, Mudaliyar - Arcot+5, Tamil,25-35yrs',
                  style: TextStyle(color: Color(0xFF666666), fontSize: 14),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'View More',
                      style: TextStyle(color: Color(0xFFB8860B), fontSize: 12),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFB8860B),
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xFFD4AF37),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.star, color: Colors.white, size: 12),
              ),
              SizedBox(height: 10),
              Text(
                'Delete',
                style: TextStyle(color: Color(0xFFB8860B), fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFormRow(String label, List<Widget> children) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 120,
          child: Text(
            label,
            style: TextStyle(
              color: Color(0xFF8B6914),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ...children,
      ],
    );
  }

  Widget _buildDropdown(String value, {double width = 100}) {
    return Container(
      width: width,
      height: 32,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Color(0xFFD4AF37),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 16),
        ],
      ),
    );
  }

  Widget _buildLargeDropdown(String value) {
    return Expanded(
      child: Container(
        height: 32,
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Color(0xFFD4AF37),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
