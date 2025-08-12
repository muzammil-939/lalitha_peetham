import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class YourPatnersPreferences extends StatefulWidget {
  const YourPatnersPreferences({super.key});

  @override
  State<YourPatnersPreferences> createState() => _YourPatnersPreferencesState();
}

class _YourPatnersPreferencesState extends State<YourPatnersPreferences> {
  @override
  Widget build(BuildContext context) {
        
    double sectionSpacing = ResponsiveHelper.isMobile(context) ? 24 : 50;

    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return MatriPageLayout(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : isTablet ? 40 : 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: sectionSpacing / 2),
            // Header Section
            Text(
              'YOUR PARTNER PREFERENCES',
              style: TextStyle(
                fontSize: ResponsiveFontsize.fontSize(
                  context, mobile: 14, tablet: 25, desktop: 30),
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'You Will See Matches Based On Preferences You Have Set',
              style: TextStyle(
                fontSize: ResponsiveFontsize.fontSize(
                  context, mobile: 12, tablet: 14, desktop: 16) ,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Tap On The Field To Edit',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),

            // Basic Details Section
            _buildSectionCard(context,
              title: 'BASIC DETAILS',
              children: [
                _buildPreferenceItem(context,
                  icon: Icons.edit_note,
                  label: 'Age Range',
                  value: '26 To 29',
                ),
                _buildPreferenceItem(context,
                  icon: Icons.height,
                  label: 'Height Range',
                  value: '5\'0" To 5\'11"',
                ),
                _buildPreferenceItem(context,
                  icon: Icons.people,
                  label: 'Marital Status',
                  value: 'Never Married',
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Community
            _buildSectionCard(context,
              title: 'COMMUNITY',
              children: [
                _buildPreferenceItem(context,
                  icon: Icons.menu_book,
                  label: 'Religion',
                  value: '26 To 29',
                ),
                _buildPreferenceItem(context,
                  icon: Icons.groups,
                  label: 'Community',
                  value:
                      'Mudaliyar - Arcot, Vellalar, Agamudayar\nArcot, Thuluva Vellala.',
                ),
                _buildPreferenceItem(context,
                  icon: Icons.language,
                  label: 'Mother Tongue',
                  value: 'Tamil',
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Location Section
            _buildSectionCard(context,
              title: 'LOCATION',
              children: [
                _buildPreferenceItem(context,
                  icon: Icons.public,
                  label: 'Country Living In',
                  value: 'India',
                  showArrow: true,
                ),
                _buildPreferenceItem(context,
                  icon: Icons.location_on,
                  label: 'State Living In',
                  value: 'Pondicherry, Tamil Nadu.',
                  showArrow: true,
                ),
                _buildPreferenceItem(context,
                  icon: Icons.location_city,
                  label: 'City / District',
                  value:
                      'Pondicherry, Chennai, Cuddalore,\nKanchipuram, Salem, Tiruchirappalli,\nTiruvannamalai, Villupuram',
                  showArrow: true,
                ),
                // Suggested Location inside the container - RIGHT ALIGNED
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Suggested For You',
                          style: TextStyle(
                             fontSize: ResponsiveHelper.isMobile(context) ? 12 : 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: ResponsiveHelper.isMobile(context) ? 12 : 16,
                            vertical: ResponsiveHelper.isMobile(context) ? 6 : 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange[300]!),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'BENGALURU / BENGALORE',
                                style: TextStyle(
                                  fontSize:  ResponsiveHelper.isMobile(context) ? 10 : 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.orange[700],
                                ),
                              ),
                              SizedBox(width: ResponsiveHelper.isMobile(context) ? 6 : 8),
                              Icon(
                                Icons.add_circle_outline,
                                size: ResponsiveHelper.isMobile(context) ? 14 : 16,
                                color: Colors.orange[700],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Education & Career Section
            _buildSectionCard(context,
              title: 'EDUCATION & CAREER',
              children: [
                _buildPreferenceItem(context,
                  icon: Icons.school,
                  label: 'Qualification',
                  value: 'Bachelor / Undergraduate, Doctorate',
                  showArrow: true,
                ),
                _buildPreferenceItem(context,
                  icon: Icons.work,
                  label: 'Working With',
                  value: 'Private Company, Government',
                  showArrow: true,
                ),
                _buildPreferenceItem(context,
                  icon: Icons.business,
                  label: 'Profession',
                  value:
                      'IT & Software Engineering,\nArtists, Animation & Web Designers\nArchitecture & Design, Airline & Aviation',
                  showArrow: true,
                ),
                _buildPreferenceItem(context,
                  icon: Icons.monetization_on,
                  label: 'Annual Income',
                  value: 'INR 4 Lakhs To 10 Lakhs',
                  showArrow: true,
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Other Details Section
            _buildSectionCard(context,
              title: 'OTHER DETAILS',
              children: [
                _buildPreferenceItem(context,
                  icon: Icons.person,
                  label: 'Profile Managed by',
                  value: 'Open To All',
                  showArrow: true,
                ),
                _buildPreferenceItem(context,
                  icon: Icons.restaurant,
                  label: 'Diet',
                  value: 'Open To All',
                  showArrow: true,
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

   Widget _buildSectionCard(BuildContext context,
      {required String title, required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5E6B8),
        borderRadius: BorderRadius.circular(0),
      ),
      padding: EdgeInsets.all(ResponsiveHelper.isMobile(context) ? 12 : 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: ResponsiveHelper.isMobile(context) ? 14 : 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }

  Widget _buildPreferenceItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    bool showArrow = false,
    bool isLast = false,
  }) {
    double iconSize = ResponsiveHelper.isMobile(context) ? 40 : 50;
    double iconInnerSize = ResponsiveHelper.isMobile(context) ? 20 : 24;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: ResponsiveHelper.isMobile(context) ? 12 : 16),
          child: Row(
            children: [
              Container(
                width: iconSize,
                height: iconSize,
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.white, size: iconInnerSize),
              ),
              SizedBox(width: ResponsiveHelper.isMobile(context) ? 12 : 16),
              Expanded(
                flex: 2,
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: ResponsiveHelper.isMobile(context) ? 14 : 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: ResponsiveHelper.isMobile(context) ? 12 : 14,
                    color: Colors.grey[600],
                    height: 1.3,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Icon(
                showArrow ? Icons.chevron_right : Icons.keyboard_arrow_down,
                color: Colors.grey[600],
                size: ResponsiveHelper.isMobile(context) ? 20 : 24,
              ),
            ],
          ),
        ),
        if (!isLast)
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[400],
            indent: iconSize + (ResponsiveHelper.isMobile(context) ? 12 : 16),
          ),
      ],
    );
  }
}

