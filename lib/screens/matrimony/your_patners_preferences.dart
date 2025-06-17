import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

class YourPatnersPreferences extends StatefulWidget {
  const YourPatnersPreferences({super.key});

  @override
  State<YourPatnersPreferences> createState() => _YourPatnersPreferencesState();
}

class _YourPatnersPreferencesState extends State<YourPatnersPreferences> {
  @override
  Widget build(BuildContext context) {
    return MatriPageLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 30,),
            // Header Section
            Text(
              'YOUR PARTNER PREFERENCES',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'You Will See Matches Based On Preferences You Have Set',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Tap On The Field To Edit',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 24),

            // Basic Details Section
            _buildSectionCard(
              title: 'BASIC DETAILS',
              children: [
                _buildPreferenceItem(
                  icon: Icons.edit_note,
                  label: 'Age Range',
                  value: '26 To 29',
                ),
                _buildPreferenceItem(
                  icon: Icons.height,
                  label: 'Height Range',
                  value: '5\'0" To 5\'11"',
                ),
                _buildPreferenceItem(
                  icon: Icons.people,
                  label: 'Marital Status',
                  value: 'Never Married',
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Community Section
            _buildSectionCard(
              title: 'COMMUNITY',
              children: [
                _buildPreferenceItem(
                  icon: Icons.menu_book,
                  label: 'Religion',
                  value: '26 To 29',
                ),
                _buildPreferenceItem(
                  icon: Icons.groups,
                  label: 'Community',
                  value: 'Mudaliyar - Arcot, Vellalar, Agamudayar\nArcot, Thuluva Vellala.',
                ),
                _buildPreferenceItem(
                  icon: Icons.language,
                  label: 'Mother Tongue',
                  value: 'Tamil',
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Location Section
            _buildSectionCard(
              title: 'LOCATION',
              children: [
                _buildPreferenceItem(
                  icon: Icons.public,
                  label: 'Country Living In',
                  value: 'India',
                  showArrow: true,
                ),
                _buildPreferenceItem(
                  icon: Icons.location_on,
                  label: 'State Living In',
                  value: 'Pondicherry, Tamil Nadu.',
                  showArrow: true,
                ),
                _buildPreferenceItem(
                  icon: Icons.location_city,
                  label: 'City / District',
                  value: 'Pondicherry, Chennai, Cuddalore,\nKanchipuram, Salem, Tiruchirappalli,\nTiruvannamalai, Villupuram',
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
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.orange[700],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.add_circle_outline,
                                size: 16,
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
            _buildSectionCard(
              title: 'EDUCATION & CAREER',
              children: [
                _buildPreferenceItem(
                  icon: Icons.school,
                  label: 'Qualification',
                  value: 'Bachelor / Undergraduate, Doctorate',
                  showArrow: true,
                ),
                _buildPreferenceItem(
                  icon: Icons.work,
                  label: 'Working With',
                  value: 'Private Company, Government',
                  showArrow: true,
                ),
                _buildPreferenceItem(
                  icon: Icons.business,
                  label: 'Profession',
                  value: 'IT & Software Engineering,\nArtists, Animation & Web Designers\nArchitecture & Design, Airline & Aviation',
                  showArrow: true,
                ),
                _buildPreferenceItem(
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
            _buildSectionCard(
              title: 'OTHER DETAILS',
              children: [
                _buildPreferenceItem(
                  icon: Icons.person,
                  label: 'Profile Managed by',
                  value: 'Open To All',
                  showArrow: true,
                ),
                _buildPreferenceItem(
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

  Widget _buildSectionCard({
    required String title,
    required List<Widget> children,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5E6B8), // Light yellow/beige color
        borderRadius: BorderRadius.circular(0),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
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

  Widget _buildPreferenceItem({
    required IconData icon,
    required String label,
    required String value,
    bool showArrow = false,
    bool isLast = false,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              // Icon Circle
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              // Label
              Expanded(
                flex: 2,
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              // Value
              Expanded(
                flex: 3,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.3,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              // Arrow Icon
              Icon(
                showArrow ? Icons.chevron_right : Icons.keyboard_arrow_down,
                color: Colors.grey[600],
                size: 24,
              ),
            ],
          ),
        ),
        // Divider line (except for last item)
        if (!isLast)
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[400],
            indent: 66, // Start after icon + spacing
            endIndent: 0,
          ),
      ],
    );
  }
}