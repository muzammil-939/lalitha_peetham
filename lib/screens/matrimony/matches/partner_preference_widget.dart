import 'package:flutter/material.dart';

class PartnerPreferencesWidget extends StatelessWidget {
  const PartnerPreferencesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Header Section
          Container(
            margin: EdgeInsets.only(bottom: 24),
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
                      'What He Is Looking For',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFD4B08A),
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Profile Images Section
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                // His Profile (Left)
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xFFD4B08A), width: 3),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=600&fit=crop&crop=face',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'His Preferences',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD4B08A),
                        ),
                      ),
                    ],
                  ),
                ),

                // Match Indicator
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFD4B08A)),
                  ),
                  child: Text(
                    'You Match 6/8 Of His Preferences',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFFD4B08A),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Your Profile (Right)
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xFFD4B08A), width: 3),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://images.unsplash.com/photo-1494790108755-2616b332c734?w=400&h=600&fit=crop&crop=face',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'You Match',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD4B08A),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Preferences List
          Column(
            children: [
              _buildPreferenceItem(
                'Age',
                '21 To 26',
                true,
              ),
              _buildPreferenceItem(
                'Height',
                '5\'5"(165cm) To 5\'11"(180cm)',
                false,
              ),
              _buildPreferenceItem(
                'Marital Status',
                'Never Married',
                true,
              ),
              _buildPreferenceItem(
                'Religion / Community',
                'Mudaliyar, Mudaliyar - Arcot, Mudaliyar - Saiva, Mudaliyar - Sen...More',
                false,
              ),
              _buildPreferenceItem(
                'Religion / Community',
                'Mudaliyar, Mudaliyar - Arcot, Mudaliyar - Saiva, Mudaliyar - Sen...More',
                true,
              ),
              _buildPreferenceItem(
                'Mother Tongue',
                'Tamil',
                true,
              ),
              _buildPreferenceItem(
                'Country Living In',
                'Tamil Nadu',
                true,
              ),
              _buildPreferenceItem(
                'State Living In',
                'Tamil Nadu',
                true,
              ),
              _buildPreferenceItem(
                'Qualification',
                'Bachelor / Undergraduate',
                true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPreferenceItem(String title, String value, bool isMatched) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side - Title and Value
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFD4B08A),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          
          // Right side - Match indicator
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isMatched ? Color(0xFFD4B08A) : Colors.transparent,
                border: Border.all(
                  color: isMatched ? Color(0xFFD4B08A) : Colors.grey[400]!,
                  width: 2,
                ),
              ),
              child: isMatched
                  ? Icon(
                      Icons.check,
                      size: 14,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.close,
                      size: 14,
                      color: Colors.grey[400],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}